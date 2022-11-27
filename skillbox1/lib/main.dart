// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

//flutter pub run import_sorter:main

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final String assetName = 'assets/michelangelos-david-bust-3d-wireframe.svg';
  final String assetNetwork = 'https://svgsilh.com/svg/1295198.svg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('3.6 Практическая работа'),
            ),
            body: Center(
              child: CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: [
                  SvgPicture.asset(assetName),
                  SvgPicture.network(assetNetwork)
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 179, 207, 255)),
                        child: i,
                      );
                    },
                  );
                }).toList(),
              ),
            )));
  }
}
        
// Column(
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: SvgPicture.asset(
//                 assetName,
//                 width: 320,
//                 height: 240,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: SvgPicture.network(
//                 assetNetwork,
//                 width: 320,
//                 height: 240,
//               ),
//             )
//           ],
//         ),
