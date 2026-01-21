import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: Icon(Icons.face),
          title: Text("title 1"),
          subtitle: Text("Subtitle 1"),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          onTap: (){
            debugPrint("Person 1");
          },
        ),
        ListTile(
          leading: Icon(Icons.face_2),
          title: Text("title 2"),
          subtitle: Text("Subtitle 2"),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          onTap: (){
            debugPrint("Person 2");
          },
        ),
        ListTile(
          leading: Icon(Icons.face_3),
          title: Text("title 3"),
          subtitle: Text("Subtitle 3"),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          onTap: (){
            debugPrint("Person 3");
          },
        ),
        ListTile(
          leading: Icon(Icons.face_4),
          title: Text("title 4"),
          subtitle: Text("Subtitle 4"),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          onTap: (){
            debugPrint("Person 4");
          },
        ),
        ListTile(
          leading: Icon(Icons.face_5),
          title: Text("title 5"),
          subtitle: Text("Subtitle 5"),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          onTap: (){
            debugPrint("Person 5 ");
          },
        ),
      ],
    );
  }
}
