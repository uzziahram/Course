import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: (){},
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        elevation: 0,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,

          children: [
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(3, 5, 3, 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.home, color: Colors.white,),
                  const Text("Home", style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(5, 5, 15, 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.shopping_cart, color: Colors.white,),
                  const Text("Shop", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(15, 5, 1, 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.favorite, color: Colors.white,),
                  const Text("Fav", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(1, 5, 0, 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.settings, color: Colors.white,),
                  const Text("Settings", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

