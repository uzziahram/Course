import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),

        ],
      ),
    );
  }
}

