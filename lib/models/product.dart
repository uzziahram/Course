enum Status {
  deliverable,
  downloadable,
}

class Product {
  String productName;
  String productDescription;
  bool isFavorite;

  Product({
    required this.productName,
    required this.productDescription,
    required this.isFavorite
  });
}