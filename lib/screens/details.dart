import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.productName});

 final String productName;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
      ),
      body: Material(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(FontAwesomeIcons.buyNLarge),
              title: Text("Hello"),
            )
          ],
        ),
      ),
    );
  }
}

