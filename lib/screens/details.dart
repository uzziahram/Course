import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.productNameList});

 // final String productName;
 final List<String> productNameList;

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
        child: ListView.builder(
            itemCount: widget.productNameList.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(widget.productNameList[index]),
                leading: Icon(Icons.shopify),
              );
            },
        )
      ),
    );
  }
}

