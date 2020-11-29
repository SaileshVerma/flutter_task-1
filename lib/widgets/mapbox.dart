import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import "package:latlong/latlong.dart" as latLng;

class MapBox extends StatefulWidget {
  @override
  _MapBoxState createState() => _MapBoxState();
}

class _MapBoxState extends State<MapBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterMap(
        options: MapOptions(
            center: latLng.LatLng(40.738380, -73.988426), zoom: 12.0),
        layers: [
          new TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/sailesh150/ckghx50w21u4w19mowiz4shnv/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2FpbGVzaDE1MCIsImEiOiJja2dkYmU2aGMwaGI2MnFvN3JmdjVwY2Q3In0.hKCVREGWZY7BM6knyJPFsA",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1Ijoic2FpbGVzaDE1MCIsImEiOiJja2dkYmU2aGMwaGI2MnFvN3JmdjVwY2Q3In0.hKCVREGWZY7BM6knyJPFsA',
              'id': 'mapbox.satellite',
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: new latLng.LatLng(40.775723, -73.968399),
                builder: (ctx) => Container(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: new latLng.LatLng(40.912419, -74.966414),
                builder: (ctx) => Container(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: new latLng.LatLng(40.759561, -73.939089),
                builder: (ctx) => Container(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: new latLng.LatLng(40.716517, -73.996608),
                builder: (ctx) => Container(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
