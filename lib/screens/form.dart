import 'package:flutter/material.dart';
import 'package:course/models/Product.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key, required this.productList });

  final List<Product> productList;

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  final _productNameController = TextEditingController();
  final _productDescriptionController = TextEditingController();

  bool? _listTileCheckBox = false;

  @override
  void dispose() {
    _productNameController.dispose();
    _productDescriptionController.dispose();
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
                prefixIcon: Icon(Icons.abc_rounded),
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _productDescriptionController,
              decoration: InputDecoration(
                  labelText: 'Product Description',
                  prefixIcon: Icon(Icons.description_rounded),
                  border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 10),
            CheckboxListTile(
              title: Text("Pin"),
              controlAffinity: ListTileControlAffinity.leading,
              value: _listTileCheckBox,
              onChanged: (value){
                setState(() {
                  _listTileCheckBox = value;
                });
              }
            ),
            const SizedBox(height: 10),
            formSubmitBtn(context)
          ],
        ),
      )
    );
  }

  OutlinedButton formSubmitBtn(BuildContext context) {

    Product createProduct(){
      Product newProduct = Product(productName: _productNameController.text, productDescription: _productDescriptionController.text);
      return newProduct;
    }

    return OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
        onPressed: (){

          widget.productList.add(createProduct());
          Navigator.pop(context);
        },
        child: Text("Submit Form", style: TextStyle(fontWeight: FontWeight.bold)),
      );
  }
}
