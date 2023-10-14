class Product{

  String productID;
  String productName;
  int productCost;

  Product({

    required this.productID,
    required this.productName,
    required this.productCost,

  });
  @override
  String toString() {
    return '''
      Product ID: $productID
      Product Name: $productName
      Product Cost: $productCost
    ''';
  }
}


class ProductMethods{
  List<Product> products =[];

  void addProduct(Product product) {
    products.add(product);
  }

  void viewAllProducts() {
    if (products.isEmpty) {
      print("No products available.");
    } else {
      for (int i = 0; i < products.length; i++) {
        print("Product $i:");
        print(products[i]);
        print("\n");
      }
    }
  }

  void deleteProduct(int index) {
    if (index >= 0 && index < products.length) {
      products.removeAt(index);
      print("product deleted successfully.");
    } else {
      print("Invalid product index.");
    }
  }

}