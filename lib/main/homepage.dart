import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:radish/main/front_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoggedin = false;
  final FrontPage _frontPage = new FrontPage();
  List<Widget> items = [
    InkWell(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7.0),
          child: Image.asset(
            "assets/new.jpg",
            fit: BoxFit.fill,
          ),
        ),
        onTap: () {}),
    InkWell(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7.0),
          child: Image.asset(
            "assets/bat1.jpg",
            fit: BoxFit.fill,
          ),
        ),
        onTap: () {
          print("hikigaya clicked");
        })
  ];
  @override
  Widget build(BuildContext context) {
    if (isLoggedin) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Radish"),
            centerTitle: true,
          ),
          body: Stack(
            alignment: Alignment.center,
            children: [
              CarouselSlider(
                options: CarouselOptions(height: 260.0),
                items: items.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width,
                        decoration:
                            const BoxDecoration(shape: BoxShape.rectangle),
                        /* margin: EdgeInsets.all(5.0), */
                        child: i,
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
          backgroundColor: Colors.purple[100],
        ),
      );
    } else {
      return FrontPage();
    }
  }
}
