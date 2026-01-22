import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final String title, subtitle;
  final IconData leadingIcon, trailingIcon;

  const ProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.add_shopping_cart_outlined,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadiusGeometry.circular(5)
        ),
        child: ListTile(
          title: Text( title ,  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          subtitle: Text( subtitle ),
          leading: IconButton(
              onPressed: (){},
              icon: Icon(leadingIcon)
          ),
          trailing: IconButton(
              onPressed: (){},
              icon: Icon(trailingIcon)
          ),
        ),
      ),
    );
  }
}