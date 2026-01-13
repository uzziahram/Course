import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Crash Course",
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              const Text.rich(
              TextSpan(
                text: "Hello",
                children: [
                  TextSpan(
                    text: "World",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "From Flutter",
                    style: TextStyle(fontSize: 30, color: Colors.blue)
                  )
                ]
              )

              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text("Hello")
              )
            ],
          )
      )
    );
  }
}

