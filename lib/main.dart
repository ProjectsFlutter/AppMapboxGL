import 'package:app_mapbox_gl/src/views/fullscreenmap.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mapbox GL App',
      home: FullScreenMap()
    );
  }
}