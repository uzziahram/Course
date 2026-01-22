import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,

      ),
      body: CustomWidget(),
    );
  }
}

class CustomWidget extends StatefulWidget {
  const CustomWidget({super.key});

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Hello again"),
          trailing: IconButton(
              onPressed: (){
                setState(() {
                  liked = !liked;
                });
              },
              icon: liked? (Icon(Icons.star )) : (Icon(Icons.star_border))
          ),
        )
      ],
    );
  }
}




