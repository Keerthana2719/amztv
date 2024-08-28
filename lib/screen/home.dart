import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:amazon/widget/contain.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imgList = [
    "assets/a10.png",
    "assets/a4.png",
    "assets/a2.png",
    "assets/a14.png",
    "assets/a7.png",
  ];

  int _current = 0;

  final List<String> img = [
    "assets/a13.png",
    "assets/a5.png",
    "assets/a12.png",
  ];

  final List<String> img1 = [
    "assets/a9.png",
    "assets/a3.png",
    "assets/a1.png",
    "assets/15.png",
    "assets/a15.png",
    "assets/a6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 130, // Reduced height
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink.withOpacity(0.9), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/MiniTV.png",
                      width: 80,
                      height: 80,
                    ),
                    Contain(
                      txt: "All",
                      txt1: "Web series",
                      txt2: "Movies",
                      txt3: "Imported",
                      txt4: "Love",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoPlayInterval:  Duration(seconds: 3),
                    ),
                    items: imgList.map((item) {
                      return Container(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),
                      );
                    }).toList(),
                  ),
                  Positioned(
                    bottom: 10.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 5.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == entry.key
                                ? Colors.white
                                : Colors.grey,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Continue Watching",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: img.map((image) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Image.asset(
                              image,
                              width: 180, // Adjust width as needed
                              height: 110, // Adjust height as needed
                              fit: BoxFit.cover,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Trending on miniTV",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Reduced to 2 columns
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 0.75, // Adjusted for larger image size
                      ),
                      itemCount: img1.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200, // Increased height for larger display
                          child: Image.asset(
                            img1[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
