import 'package:course/models/product.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.productList});

 // final String productName;
 final List<Product> productList;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: Material(
            child: ListView.builder(
                itemCount: widget.productList.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(widget.productList[index].productName),
                    subtitle: Text(widget.productList[index].productDescription),
                    leading: Icon(Icons.shopify),
                    trailing: widget.productList[index].isFavorite? (Icon(Icons.star)) : (Icon(Icons.star_border_outlined)),

                  );
                },
            )
          ),
        ),
      ),
    );
  }
}

