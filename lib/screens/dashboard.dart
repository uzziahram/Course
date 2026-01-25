import 'package:flutter/material.dart';
import 'package:course/screens/form.dart';
import 'package:course/screens/details.dart';
import 'package:course/models/product.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  List<Product> productList = [];

  void addProduct(Product product){
    setState(() {
      productList.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Dashboard"),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            routeButtons(context, MyForm(onAddProduct: addProduct ,), "Add a Product"),
            // routeButtons(context, Details(productList: productList,), "Details"),
            const SizedBox(height: 20,),
            Expanded( child: Details(productList: productList) )
          ],
        ),
      ),
    );
  }

  OutlinedButton routeButtons(BuildContext context, Widget route, String title ) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // border radius here
        ),
      ),

      onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder:(context){
              return route;
            })
        );
      },
      child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}



