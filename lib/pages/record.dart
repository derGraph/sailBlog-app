import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/recorder.dart';
import 'package:sailblog/server.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  @override
  State<RecordPage> createState() => _RecordPage();
}

class _RecordPage extends State<RecordPage> {
  final tileProvider = FMTCTileProvider.allStores(
    allStoresStrategy: BrowseStoreStrategy.readUpdateCreate,
    loadingStrategy: BrowseLoadingStrategy.onlineFirst,
  );

  @override
  Widget build(BuildContext context) {
    FlutterMap map = FlutterMap(
      mapController: MapController(),
      options: MapOptions(
          initialCenter: LatLng(43.95, 14.79),
          initialZoom: 8,
          keepAlive: true,
          interactionOptions: InteractionOptions(
              flags: InteractiveFlag.drag |
                  InteractiveFlag.doubleTapZoom |
                  InteractiveFlag.flingAnimation |
                  InteractiveFlag.pinchMove |
                  InteractiveFlag.pinchZoom |
                  InteractiveFlag.doubleTapDragZoom |
                  InteractiveFlag.scrollWheelZoom)),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          maxZoom: 19,
          tileProvider: tileProvider,
        ),
        TileLayer(
          urlTemplate: 'http://tiles.openseamap.org/seamark/{z}/{x}/{y}.png',
          maxZoom: 19,
          minNativeZoom: 9,
          tileProvider: tileProvider,
        ),
        SimpleAttributionWidget(source: Text("OpenStreetMap"))
      ],
    );

    recorder.setMode(recorder.mode);
    return Stack(children: [
      map,
      Container(
        margin: EdgeInsets.only(top: 5),
        alignment: Alignment.topCenter,
        child: ModeAndOnlineButtons(),
      ),
      StatusCard(),
    ]);
  }
}

class ModeAndOnlineButtons extends StatefulWidget {
  const ModeAndOnlineButtons({super.key});

  @override
  State<ModeAndOnlineButtons> createState() => _ModeAndOnlineButtonsState();
}

class _ModeAndOnlineButtonsState extends State<ModeAndOnlineButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SegmentedButton(
        showSelectedIcon: false,
        style: SegmentedButton.styleFrom(
          backgroundColor: Colors.grey[200],
        ),
        segments: const <ButtonSegment>[
          ButtonSegment(value: Modes.off, label: Icon(Icons.close)),
          ButtonSegment(value: Modes.anchor, label: Icon(Icons.anchor)),
          ButtonSegment(value: Modes.sailing, label: Icon(Icons.sailing)),
          ButtonSegment(value: Modes.motor, label: Icon(Icons.directions_boat))
        ],
        selected: {recorder.mode},
        onSelectionChanged: (selectedMode) {
          setState(() {
            recorder.setMode(selectedMode.first);
          });
        },
      ),
      SegmentedButton(
        showSelectedIcon: false,
        style: SegmentedButton.styleFrom(backgroundColor: Colors.grey[200]),
        segments: const <ButtonSegment>[
          ButtonSegment(value: false, label: Icon(Icons.wifi_off)),
          ButtonSegment(value: true, label: Icon(Icons.wifi))
        ],
        selected: {recorder.online},
        onSelectionChanged: (selectedOnline) {
          setState(() {
            recorder.setOnline(selectedOnline.first);
          });
        },
      ),
    ]);
  }
}

class StatusCard extends StatefulWidget {
  const StatusCard({super.key});

  @override
  State<StatusCard> createState() => _StatusCardState();
}

class _StatusCardState extends State<StatusCard> {
  late Timer _timer;
  List<DatapointLocal> _datapoints = [];
  int _uploadableCount = 0;
  final DateFormat _timeFormat = DateFormat('HH:mm:ss');

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 100), _updateData);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Future<void> _updateData(Timer timer) async {
    final newDatapoints = await database.getDatapoints();
    final newUploadable = await database.countUploadableDatapoints();

    if (recorder.online) {
      server.uploadDatapoints();
    }

    if (mounted) {
      setState(() {
        _datapoints = newDatapoints;
        _uploadableCount = newUploadable;
      });
    }
  }

  String _getGpsStatus() {
    if (_datapoints.isEmpty) return "waiting for GPS!";

    final timeDiff = DateTime.now().difference(_datapoints.last.time!);
    if (timeDiff.inSeconds < 30) return "GPS: ok!";
    if (recorder.mode == Modes.off) return "GPS: not recording!";
    return "GPS: Waiting for GPS!";
  }

  @override
  Widget build(BuildContext context) {
    final gpsStatus = _getGpsStatus();
    final uploadedCount = _datapoints.length - _uploadableCount;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        margin: const EdgeInsets.all(32.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('uploaded $uploadedCount/${_datapoints.length} $gpsStatus'),
              if (_datapoints.isNotEmpty)
                Text(
                    'last Datapoint ${_timeFormat.format(_datapoints.last.time!.toLocal())} '
                    'accuracy: ${_datapoints.last.hAccuracy?.truncate(scale: 2)}m'),
            ],
          ),
        ),
      ),
    );
  }
}
