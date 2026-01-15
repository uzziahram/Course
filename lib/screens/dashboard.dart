import 'package:flutter/material.dart';
import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Boring", style: TextStyle(fontSize: 10),),
            IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.airbnb)
            )
          ],
        ),
      ),
    );
  }

  int getRandomNumber(){ return Random().nextInt(1000); }
}


