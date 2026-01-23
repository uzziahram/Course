import 'package:flutter/material.dart';
import 'package:course/screens/form.dart';
import 'package:course/screens/details.dart';


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
        title: const  Text("Dashboard"),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            routeButtons(context, MyForm(), "Form"),
            // routeButtons(context, Details(), "Details"),
          ],
        ),
      ),
    );
  }

  OutlinedButton routeButtons(BuildContext context, Widget route, String title ) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
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



