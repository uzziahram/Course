import 'package:flutter/material.dart';
import 'package:course/models/product.dart';
import 'package:course/widgets/custom_checkbox.dart';


class MyForm extends StatefulWidget {
  const MyForm({super.key, required this.onAddProduct });

  // final List<Product> productList;
  final void Function(Product) onAddProduct;

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  final _productNameController = TextEditingController();
  final _productDescriptionController = TextEditingController();
  bool _productIsFavoriteController = false;
  Status? _productStatusController;

  // bool _listTileCheckBox = false;

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
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            width: 600,
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
                  title: "Add to Favorites",
                  value: _productIsFavoriteController,
                  onChanged: (val) {
                    setState(() {
                      _productIsFavoriteController = val;
                    });
                  },
                  checkedIcon: Icons.favorite,
                  uncheckedIcon: Icons.favorite_border_outlined,
                ),
                const SizedBox(height: 10,),
                RadioListTile<Status>(
                  value: Status.deliverable,
                  groupValue: _productStatusController,
                  title: Text(Status.deliverable.name),
                  onChanged: (val){
                    setState(() {
                      _productStatusController = val;
                    });
                  },
                ),
                RadioListTile<Status>(
                  value: Status.downloadable,
                  groupValue: _productStatusController,
                  title: Text(Status.downloadable.name),
                  onChanged: (val){
                    setState(() {
                      _productStatusController = val;
                    });
                  },
                ),

                const SizedBox(height: 10),
                formSubmitBtn(context)
              ],
            ),
          ),
        )
    );
  }



  OutlinedButton formSubmitBtn(BuildContext context) {
    Product createProduct() {
      return Product(
        productName: _productNameController.text,
        productDescription: _productDescriptionController.text,
        isFavorite: _productIsFavoriteController
      );
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

        // widget.productList.add(product);
        widget.onAddProduct(product);
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
