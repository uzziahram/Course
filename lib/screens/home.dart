import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Image.asset("images/chatbot.png")),
              Expanded(child: Image.asset("images/chatbot.png")),
              Expanded(child: Image.asset("images/chatbot.png"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.eighteen_mp_outlined),
                  Text("One")
                ],
              ),
              Column(
                children: [
                  Icon(Icons.eighteen_mp_outlined),
                  Text("Two")
                ],
              ),
              Column(
                children: [
                  Icon(Icons.eighteen_mp_outlined),
                  Text("Three")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
