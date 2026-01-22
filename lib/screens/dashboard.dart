import 'package:flutter/material.dart';
import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:course/screens/home.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Dashboard"),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.add,)),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded,)),
        // ],
        foregroundColor: Colors.white,
        backgroundColor: Colors.black87,
        centerTitle: true,
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        // ),
      ),
      // drawer: Drawer(
      //   elevation: 140.0,
      //   child: ListView(
      //     children: [
      //       DrawerHeader(
      //         child: Container(
      //           color: Colors.blue,
      //           child: Center(
      //             child: Text("Navigation Drawer"),
      //           ),
      //         )
      //       ),
      //       ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: (){},),
      //       ListTile(leading: Icon(Icons.shopping_cart), title: Text("Shopping"), onTap: (){},),
      //       ListTile(leading: Icon(Icons.favorite), title: Text("Favourites"), onTap: (){},),
      //     ],
      //   ),
      // ),
      body: Home()
    );
  }


}


class Basics extends StatefulWidget {
  const Basics({super.key});

  @override
  State<Basics> createState() => _BasicsState();
}
class _BasicsState extends State<Basics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Boring", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.airbnb,
                size: 70,
              )
          ),
          Text("Hello Niggas"),
          Text("Random Number: ${getRandomNumber()}"),
          ElevatedButton(
              onPressed: () {},
              child: const Text("Button")
          ),
        ],
      ),
    );
  }

  int getRandomNumber(){ return Random().nextInt(1000); }
}



