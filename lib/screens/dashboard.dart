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
        leading: IconButton(onPressed: () {},icon: Icon(Icons.menu_rounded)),
        title: Text("Dashboard"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded,)),
        ],
        foregroundColor: Colors.white,
        backgroundColor: Colors.black87,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        ),
      ),
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



