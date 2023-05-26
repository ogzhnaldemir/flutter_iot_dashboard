import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/view/about/feed_back/feed_back.dart';
import 'package:latlng/latlng.dart' show LatLng;
import 'package:map/map.dart';

import 'package:flutter_app/constants/contans.dart';

class AboutPage extends StatelessWidget {
  final controller = MapController(
    location: const LatLng(0, 0),
    zoom: 2,
  );

  AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bckcolor,
      body: Padding(
        padding: Constants.paddings,
        child: Column(
          children: [
            SizedBox(
              height: 80.0, // resim yüksekliği
              child: Image.asset(
                'images/robit15.png', // resim dosyası yolu
                fit: BoxFit.contain, // resim boyutu
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(height: 80.0),
                    Text(
                      ''' Vizyonumuz''',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "Robit Teknoloji, teknolojik projelerinizi hayata geçirmenize yardımcı olarak dünya genelinde lider bir teknoloji şirketi olmayı hedeflemektedir.",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(height: 32.0),
                    Text(
                      "Misyonumuz",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "Müşterilerimize kaliteli, yenilikçi ve profesyonel bir hizmet sunarak, sektörde fark yaratan bir teknoloji şirketi olmayı amaçlıyoruz.",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 32.0),
                    const Text(
                      "Hedeflerimiz",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      "Dünya genelindeki teknolojik gelişmeleri takip ederek, müşterilerimizle iş birliği içinde çalışarak, en iyi sonuçları elde etmeyi hedefliyoruz.",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                      width: 101,
                    ),
              //google map
              SizedBox(
                height: 150,
                width: 350,
                child: MapLayout(
                  controller: controller,
                  builder: (context, transformer) {
                    return TileLayer(builder: (context, x, y, z) {
                      final tilesInZoom = pow(2.0, z).floor();
              
                      while (x < 0) {
                        x += tilesInZoom;
                      }
                      while (y < 0) {
                        y += tilesInZoom;
                      }
              
                      x %= tilesInZoom;
                      y %= tilesInZoom;
              
                      //Google Maps
                      final url =
                          'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';
              
                      return CachedNetworkImage(
                        imageUrl: url,
                        fit: BoxFit.cover,
                      );
                    });
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedBackPage()),
                    );
                  },
                  child: const Text("Feedback"))
            ]),
      ),
      )
        
          ]
        )
      )
    );
  }
}

