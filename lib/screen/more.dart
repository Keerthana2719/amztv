import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
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
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    "assets/MiniTV.png",
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Parental Control",
                  style: TextStyle(
                      color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10,),
                Text("Control what you can watch" ,style: TextStyle(
                  color: Colors.white54, fontSize: 10,),),
                SizedBox(height: 15,),

                Divider(color: Colors.white60,),
                SizedBox(height: 10,),

                Text("Delete your miniTV data", style: TextStyle(
                    color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),),
                SizedBox(height: 10,),

                Text("Delete your miniTV data and watch history",style: TextStyle(
                  color: Colors.white54, fontSize: 10,)),
                SizedBox(height: 15,),

                Divider(color: Colors.white60,),
                SizedBox(height: 10,),

                Text("About & Legal", style: TextStyle(
                    color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),),
                SizedBox(height: 15,),

                Divider(color: Colors.white60,),
                SizedBox(height: 10,),

                Text("Help", style: TextStyle(
                    color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),),
                SizedBox(height: 10,),

                Text("Frequently asked questions",style: TextStyle(
                  color: Colors.white54, fontSize: 10,))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
