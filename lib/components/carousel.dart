import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kairanban/page/home/sample.dart';

final List<String> imgList = [
  'https://cdn.pixabay.com/photo/2017/10/31/20/57/hands-2906458_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/03/05/13/05/family-1237701_1280.jpg',
  'https://cdn.pixabay.com/photo/2015/12/15/06/42/kids-1093758_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/09/06/20/35/vaccination-2722937_1280.jpg',
];

final List<String> titleList = ['高齢者', '育児', '教育', 'スポーツ', 'コロナ関連'];

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SamplePage()),
                      );
                    },
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Stack(
                          children: <Widget>[
                            Image.network(item,
                                fit: BoxFit.cover, width: 1000.0),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                                child: Text(
                                  titleList[imgList.indexOf(item)],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  )),
            ))
        .toList();

    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
      ),
      items: imageSliders,
    ));
  }
}
