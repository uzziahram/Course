import 'package:flutter/material.dart';
import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.blueGrey,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Text("Boring", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            )
          ],
        ),
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



