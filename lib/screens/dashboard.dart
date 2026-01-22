import 'package:flutter/material.dart';
import 'package:course/screens/home.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Dashboard"),

        foregroundColor: Colors.white,
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),

      body: Home()
    );
  }


}



