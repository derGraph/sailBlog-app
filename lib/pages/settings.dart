import 'package:flutter/material.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
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
        SwitchListTile(
            value: !settings.ownSource,
            title: const Text("Use boat NMEA"),
            onChanged: (value) => {
                  setState(() {
                    settings.changeOwnSource(!value);
                  })
                }),
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
