import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final List<String> img1 = [
    "assets/a9.png",
    "assets/a3.png",
    "assets/a1.png",
    "assets/a15.png"
    "assets/a3.png",
    "assets/a6.png",
    "assets/a9.png",
    "assets/a3.png",
    "assets/a1.png",
    "assets/15.png",
    "assets/a3.png",
    "assets/a6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 80, // Reduced height
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pink.withOpacity(0.9), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios,color: Colors.white,),
                    SizedBox(width: 100,),
                    Image.asset(
                      "assets/MiniTV.png",
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
                     Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Shows, genres, movies and more',
                      hintStyle: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Icon(Icons.search_sharp, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white), // Set the border color here
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white), // Set the border color here
                      ),
                      filled: true,
                      fillColor: Colors.transparent,
                    ),
                  ),

                  SizedBox(height: 15,),
                  const Text(
                  "Most Searched on miniTV",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 15),
                  // GridView.builder for img1
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
    );
  }
}
