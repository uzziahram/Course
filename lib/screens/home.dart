import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> products  = ["Bed", "Sofa" , "Chair"];
  List<String> productDetails = ["King Sized Bed" , "King Sized Sofa" , "Wooden"];
  List<int> productPrice = [3000, 2000, 1000];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index){
        return ListTile(
          leading: CircleAvatar(child: Text(products[index][0])),
          title: Text(products[index]),
          subtitle: Text(productDetails[index]),
          trailing: Text(productPrice[index].toString()),
        );
      },
    );
  }
}

