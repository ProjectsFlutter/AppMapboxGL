import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class FullScreenMap extends StatefulWidget {
  const FullScreenMap({Key? key}) : super(key: key);

  @override
  State<FullScreenMap> createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
    final center = const LatLng(21.233008061802607, -98.48597525328837);
    String selectedStyle = "mapbox://styles/alons01/ckudj4om602av17po7cxymqp6";
    final darkStyle   = "mapbox://styles/alons01/ckudiz8oc022e17rhov55jywt";
    final streetStyle = "mapbox://styles/alons01/ckudj4om602av17po7cxymqp6";
    MapboxMapController? mapController;

    void _onMapCreated(MapboxMapController controller) {
      mapController = controller;
    }
    void onStyleLoadedCallback() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _createMap(),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.add_to_home_screen),
              onPressed: (){
                setState(() {
                  selectedStyle = (selectedStyle == darkStyle) ? streetStyle : darkStyle;
                });
              }
            ),
          ],
        ),
    );
  }

  MapboxMap _createMap() {
    return MapboxMap(
      styleString: selectedStyle,
      accessToken:"pk.eyJ1IjoiYWxvbnMwMSIsImEiOiJja3VkYnM4Y3ExOHF1MnBueml6anE5NDl3In0.hLC6trsF0h2NVj1c9lzVEQ",
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: center,
        zoom: 14
      ),
      onStyleLoadedCallback: onStyleLoadedCallback,
    );
  }
}