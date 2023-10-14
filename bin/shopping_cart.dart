import 'product.dart';
class ShoppingCart{
  List<Product> products =[];

  void addProductToCart(Product product) {
    products.add(product);

  }

  void viewAllProductsCart() {
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

  void deleteProductFromCart(int index) {
    if (index >= 0 && index < products.length) {
      products.removeAt(index);
      print("product deleted successfully.");
    } else {
      print("Invalid product index.");
    }
  }

}