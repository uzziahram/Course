import 'package:flutter/material.dart';
import 'package:course/models/Product.dart';
import 'package:course/widgets/custom_checkbox.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key,required this.onProductAdded });

  final void Function(Product product) onProductAdded;

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  final _productNameController = TextEditingController();
  final _productDescriptionController = TextEditingController();

  bool _listTileCheckBox = false;

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
              CustomCheckbox(
                title: "Pin Product",
                value: _listTileCheckBox,
                onChanged: (val) {
                  setState(() {
                    _listTileCheckBox = val;
                  });
                },
                checkedIcon: Icons.push_pin,
                uncheckedIcon: Icons.push_pin_outlined,
              ),
              const SizedBox(height: 10),
              formSubmitBtn(context)
            ],
          ),
        )
    );
  }

  OutlinedButton formSubmitBtn(BuildContext context) {
    Product createProduct() {
      return Product(productName: _productNameController.text, productDescription: _productDescriptionController.text);
    }

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // border radius here
        ),
      ),

      onPressed: () {
        Product product = createProduct();
        if (product.productDescription.isEmpty || product.productName.isEmpty) {
          showMissingFieldsDialog(context);
          return;
        }

        widget.onProductAdded(product);
        successfulSubmissionDialog(context);
      },
      child: Text("Submit Form", style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  void showMissingFieldsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: const Text("Incomplete Input"),
          content: const Text("Please provide all input fields."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // close the dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }


  void successfulSubmissionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: const Text("Product Added Successfully"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // close the dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
