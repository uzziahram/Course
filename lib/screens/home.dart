import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          OutlinedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.yellow,
              // overlayColor: Colors.red,
              padding: EdgeInsets.all(20),
              fixedSize: Size(300, 80),
              foregroundColor: Colors.black87,
              textStyle: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),
              // side: BorderSide(color: Colors.black87, width: 2),
              shape: StadiumBorder()
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Let's Begin"),
                Icon(Icons.shopping_bag_outlined)
              ],
            ),
            // child: Text("Hello"),
          ),
      ),
    );
  }
}
