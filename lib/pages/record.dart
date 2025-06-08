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

final tileProvider = FMTCTileProvider.allStores(
  allStoresStrategy: BrowseStoreStrategy.readUpdateCreate,
  loadingStrategy: BrowseLoadingStrategy.cacheFirst,
);

final mapController = MapController();
bool mapReady = false;

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  @override
  State<RecordPage> createState() => _RecordPage();
}

class RecordPageBGTask extends ChangeNotifier {
  List<Polyline> polylines = [];
  List<DatapointLocal> newDatapoints = [];
  int newUploadable = 0;
  int oldPoints = 0;

  void scaleMap() {
    List<LatLng> points = [];
    for(Polyline polyline in polylines){
      if(polyline.points.isNotEmpty){
        points.addAll(polyline.points);
      }
    }
    if(mapReady && points.isNotEmpty){
      mapController.fitCamera(CameraFit.bounds(bounds: LatLngBounds.fromPoints(points), maxZoom: 19, padding: EdgeInsets.all(50)));
    }
  }

  Color _getColorFromPropulsion(int propulsion) {
    switch(propulsion) {
      case 0:
        //anchor
        return Color.fromARGB(255, 70, 130, 180);
      case 1:
        //motor
        return Color.fromARGB(255, 255, 102, 0);
      case 2:
        //sailing
        return Color.fromARGB(255, 46, 139, 87);
      default:
        //if not specified
        return Color.fromARGB(255, 255, 0, 0);
    } 
  }

  Future<void> updateData(Timer timer) async {
    newDatapoints = await database.getDatapoints();
    newUploadable = await database.countUploadableDatapoints();

    if(newDatapoints.length > oldPoints){
      oldPoints = newDatapoints.length;

      int lastPropulsion = newDatapoints[0].propulsion!;
      List<LatLng> points = [];
      for(DatapointLocal datapoint in newDatapoints){
        if(datapoint.propulsion == lastPropulsion){
          points.add(LatLng(datapoint.lat!.toDouble(), datapoint.long!.toDouble()));
        }else {
          polylines.add(Polyline(
            points: points,
            strokeWidth: 5,
            useStrokeWidthInMeter: true,
            color: _getColorFromPropulsion(lastPropulsion),
          ));
          points = [points.last];
          lastPropulsion = datapoint.propulsion!;
        }
      }
      polylines.add(Polyline(
        points: points,
        strokeWidth: 5,
        useStrokeWidthInMeter: true,
        color: _getColorFromPropulsion(lastPropulsion)
      ));
      scaleMap();
    }

    if (recorder.online) {
      server.uploadDatapoints();
    }
    notifyListeners();
  }
}

RecordPageBGTask bgTask = RecordPageBGTask();

class _RecordPage extends State<RecordPage> {
  FlutterMap map = FlutterMap(
    mapController: mapController,
    options: MapOptions(
        initialCenter: LatLng(43.95, 14.79),
        initialZoom: 8,
        keepAlive: true,
        onMapReady: () {
          mapReady = true;
          bgTask.scaleMap();
        },
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
      SimpleAttributionWidget(source: Text("OpenStreetMap")),
      TrackOverlay()
    ],
  );

  @override
  Widget build(BuildContext context) {    
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

class TrackOverlay extends StatefulWidget {
  const TrackOverlay({super.key});

  @override
  State<TrackOverlay> createState() => _TrackOverlayState();
}

class _TrackOverlayState extends State<TrackOverlay> {
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: bgTask,
      builder: (BuildContext context, Widget? child) {
        return PolylineLayer(
          polylines: bgTask.polylines
        );
      }, 
    );
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
  final DateFormat _timeFormat = DateFormat('HH:mm:ss');

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 100), bgTask.updateData);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _getGpsStatus() {
    if (bgTask.newDatapoints.isEmpty) return "waiting for GPS!";

    final timeDiff = DateTime.now().difference(bgTask.newDatapoints.last.time!);
    if (recorder.mode == Modes.off) return "GPS: not recording!";
    if (timeDiff.inSeconds < 30) return "GPS: ok!";
    return "GPS: Waiting for GPS!";
  }

  @override
  Widget build(BuildContext context) {
    final uploadedCount = bgTask.newDatapoints.length - bgTask.newUploadable;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        margin: const EdgeInsets.all(32.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              ListenableBuilder(
                listenable: bgTask,
                builder: (BuildContext context, Widget? child) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('uploaded $uploadedCount/${bgTask.newDatapoints.length} ${_getGpsStatus()}'),
                      if (bgTask.newDatapoints.isNotEmpty)
                        Text(
                            'last Datapoint ${_timeFormat.format(bgTask.newDatapoints.last.time!.toLocal())} '
                            'accuracy: ${bgTask.newDatapoints.last.hAccuracy?.truncate(scale: 2)}m'),
                    ],
                  );
          }),
        ),
      ),
    );
  }
}
