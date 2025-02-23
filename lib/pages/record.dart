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

  Timer? _timer;
  String _card1 = "";
  String _card2 = "";

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 100), _timerFunction);
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  Future<void> _timerFunction(Timer timer) async {
    int uploadableDatapoints = (await database.countUploadableDatapoints());
    List<DatapointLocal> allDatapoints = (await database.getDatapoints());

    DateFormat format = DateFormat('HH:mm:ss');

    if (recorder.online) {
      server.uploadDatapoints();
    }
    String gpsStatus = "waiting for GPS!";

    if (DateTime.now().difference(allDatapoints.last.time!).inSeconds < 30) {
      gpsStatus = "GPS: ok!";
    } else if (recorder.mode == Modes.off) {
      gpsStatus = "GPS: not recording!";
    } else {
      gpsStatus = "GPS: Waiting for GPS!";
    }

    database.log(DateTime.now()
        .difference(allDatapoints.last.time!)
        .inSeconds
        .toString());

    setState(() {
      _card1 =
          "uploaded ${allDatapoints.length - uploadableDatapoints}/${allDatapoints.length} $gpsStatus";
      "";
      _card2 = "last Datapoint "
          "${format.format(allDatapoints.last.time!.toLocal())} "
          "accuracy: ${allDatapoints.last.hAccuracy?.truncate(scale: 2)}m";
    });
  }

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
        child: Column(children: [
          SegmentedButton(
            showSelectedIcon: false,
            style: SegmentedButton.styleFrom(
              backgroundColor: Colors.grey[200],
            ),
            segments: const <ButtonSegment>[
              ButtonSegment(value: Modes.off, label: Icon(Icons.close)),
              ButtonSegment(value: Modes.anchor, label: Icon(Icons.anchor)),
              ButtonSegment(value: Modes.sailing, label: Icon(Icons.sailing)),
              ButtonSegment(
                  value: Modes.motor, label: Icon(Icons.directions_boat))
            ],
            selected: {recorder.mode},
            onSelectionChanged: (selectedState) {
              setState(() {
                recorder.setMode(selectedState.first);
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
        ]),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Card(
          margin: const EdgeInsets.all(32.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, // Ensure Column takes minimal space
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Align text to the left
              children: [
                Text(_card1),
                Text(_card2),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
