import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/responsive.dart';


class ContactUsMap extends StatelessWidget {
  @required double latitude;
  @required double longitude;


  ContactUsMap(this.latitude, this.longitude);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: (!Responsive.isDesktop(context))? 1000.w : 600.w,
      child: FlutterMap(
        options: MapOptions(
          center: latLng.LatLng(33.562935, 73.148659),
          zoom: 13.5,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/abdulsamad110/cktnz2gi70rjm19ndihzn78uy/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYWJkdWxzYW1hZDExMCIsImEiOiJja3RueXdqZDQwNm81MndvMm9rNXkxa2c0In0.ATYqGjOvZ1vgQ9IlEfgYCQ",
            additionalOptions: {
              'accessToken' : 'pk.eyJ1IjoiYWJkdWxzYW1hZDExMCIsImEiOiJja3RueXdqZDQwNm81MndvMm9rNXkxa2c0In0.ATYqGjOvZ1vgQ9IlEfgYCQ',
              'id' : 'mapbox.mapbox-streets-v8'
            },
            attributionBuilder: (_) {
              return Text("© OpenStreetMap contributors");
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 25.0,
                height: 25.0,
                point: latLng.LatLng(33.562935, 73.148659),
                builder: (ctx) =>
                    Container(
                      child: Image(image: AssetImage('assets/point.png'), height: 12, width: 12,),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
