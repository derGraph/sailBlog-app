import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/server.dart';
import 'package:sailblog/settings.dart';
import 'package:share_plus/share_plus.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  Future<bool> _ownSource = Settings().getOwnSource();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ElevatedButton(
          child: const Text("Logs"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => _LogsPage()));
          },
        ),
        ElevatedButton(
          child: const Text("Datapoints"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => _DatapointsPage()));
          },
        ),
        FutureBuilder(
            future: _ownSource,
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return SwitchListTile(
                  value: false,
                  title: const Text("Use boat NMEA"),
                  onChanged: null,
                );
              } else if (snapshot.hasError) {
                return SwitchListTile(
                  value: false, // Default to false on error
                  onChanged: null, // Disable interactions on error
                  title: const Text("Use boat NMEA"),
                  subtitle: Text("Error loading setting: ${snapshot.error}"),
                  tileColor: Colors.red,
                );
              } else {
                return SwitchListTile(
                  value: !snapshot.data!,
                  title: const Text("Use boat NMEA"),
                  onChanged: (value) => {
                    setState(() {
                      Settings().changeOwnSource(!value).then(
                          (value) => {_ownSource = Settings().getOwnSource()});
                    })
                  },
                );
              }
            }),
        ElevatedButton(
          child: const Text("Login"),
          onPressed: () {
            server.login();
          },
        ),
        ElevatedButton(
          child: const Text("Export Database!"),
          onPressed: () async {
            final supportDir = await getApplicationSupportDirectory();
            final database = join(supportDir.path, 'database.sqlite.db');
            final params = ShareParams(
              text: 'sailBlog Database',
              files: [XFile(database)],
            );
            final result = await SharePlus.instance.share(params);
          }
        )
      ],
    );
  }
}

class _LogsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Logs")),
      body: FutureBuilder<List<Widget>>(
        future: _getLogObjects(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(snapshot.data!),
                ),
              ],
            );
          } else {
            return const Center(child: Text('No logs available'));
          }
        },
      ),
    );
  }

  Future<List<Widget>> _getLogObjects() async {
    List<Widget> returnWidgets = [];
    List<LogMessage> logs = await database.getLogs();
    for (LogMessage message in logs) {
      returnWidgets
          .add(Text("${message.time!.toIso8601String()}: ${message.message}"));
    }
    return returnWidgets;
  }
}

class _DatapointsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Datapoints")),
      body: FutureBuilder<List<Widget>>(
        future: _getDatapointsObjects(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(snapshot.data!),
                ),
              ],
            );
          } else {
            return const Center(child: Text('No Datapoints available'));
          }
        },
      ),
    );
  }

  Future<List<Widget>> _getDatapointsObjects() async {
    List<Widget> returnWidgets = [];
    List<DatapointLocal> datapoints =
        (await database.getDatapoints()).reversed.toList();
    for (DatapointLocal datapoint in datapoints) {
      returnWidgets.add(Text(
          "${datapoint.propulsion} ${datapoint.time!.toIso8601String()}: ${datapoint.lat}, ${datapoint.long}, spd: ${datapoint.speed}, hdg: ${datapoint.heading}, uploaded: ${datapoint.uploaded}"));
    }
    return returnWidgets;
  }
}
