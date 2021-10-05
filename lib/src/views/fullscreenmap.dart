import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class FullScreenMap extends StatefulWidget {
  const FullScreenMap({Key? key}) : super(key: key);

  @override
  State<FullScreenMap> createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
    MapboxMapController? mapController;
    void _onMapCreated(MapboxMapController controller) {
      mapController = controller;
    }
    void onStyleLoadedCallback() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MapboxMap(
        accessToken:"pk.eyJ1IjoiYWxvbnMwMSIsImEiOiJja3VkYnM4Y3ExOHF1MnBueml6anE5NDl3In0.hLC6trsF0h2NVj1c9lzVEQ",
        onMapCreated: _onMapCreated,
        initialCameraPosition: const CameraPosition(
          target: LatLng(21.233008061802607, -98.48597525328837),
          zoom: 14
        ),
        onStyleLoadedCallback: onStyleLoadedCallback,
      )
    );
  }
}