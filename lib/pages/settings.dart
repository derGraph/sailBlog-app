import 'package:flutter/material.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';

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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const _LogsPage()));
          },
        )
      ],
    );
  }
}

class _LogsPage extends StatelessWidget {
  const _LogsPage({super.key});

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
