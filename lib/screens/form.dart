import 'package:course/screens/details.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  final _productNameController = TextEditingController();


  @override
  void dispose() {
    _productNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        
        child: ListView(
          children: [
            TextFormField(
              controller: _productNameController,
              decoration: InputDecoration(
                labelText: 'Product Name',
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 20),
           formSubmitBtn(context)
          ],
        ),
      )
    );
  }

  OutlinedButton formSubmitBtn(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder:(context){
                return Details(productName: _productNameController.text,);
              })
          );
          // Navigator.pop(context);
        },
        child: Text("Submit Form", style: TextStyle(fontWeight: FontWeight.bold)),
      );
  }
}
