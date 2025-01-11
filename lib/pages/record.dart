import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sailblog/recorder.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  @override
  State<RecordPage> createState() => _RecordPage();
}

class _RecordPage extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      FlutterMap(
        mapController: MapController(),
        options: MapOptions(
            initialCenter: LatLng(43.95, 14.79),
            initialZoom: 8,
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
              maxZoom: 19),
          TileLayer(
            urlTemplate: 'http://tiles.openseamap.org/seamark/{z}/{x}/{y}.png',
            maxZoom: 19,
            minNativeZoom: 9,
          ),
          SimpleAttributionWidget(source: Text("OpenStreetMap"))
        ],
      ),
      Container(
        alignment: Alignment.topCenter,
        child: SegmentedButton(
          showSelectedIcon: false,
          style: SegmentedButton.styleFrom(backgroundColor: Colors.grey[200]),
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
      )
    ]);
  }
}
