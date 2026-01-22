import 'package:flutter/material.dart';
import 'package:course/widgets/product_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: [
        ProductCard(title: "Mouse", subtitle: "A4Tech"),
        ProductCard(title: "Keyboard", subtitle: "8bitdo"),
        ProductCard(title: "Gaming Controller", subtitle: "8bitdo"),
        ProductCard(title: "Monitor", subtitle: "AOC")
      ],
    );
  }
}


