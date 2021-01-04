import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VerticalSliderDemo(),
    );
  }
}

List<String> imgList = [
  'https://static.scientificamerican.com/sciam/cache/file/92E141F8-36E4-4331-BB2EE42AC8674DD3_source.jpg',
  'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png',
];

class VerticalSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carousel Example')),
      body: Container(
        child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            items: [
              GestureDetector(
                onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
                },
                              child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.blueAccent),
                  child: Image.network(imgList[0], fit: BoxFit.fill),
                ),
              ),
              GestureDetector(
                onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
                },
                              child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.blueAccent),
                  child: Image.network(imgList[1], fit: BoxFit.fill),
                ),
              ),
            ]),
      ),
    );
  }
}

// example of next page
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NextPage'),
      ),
      body: Text('Welcome'),
      
    );
  }
}