import 'dart:io';
import 'customer.dart';
import 'seller.dart';
import 'product.dart';
import 'shopping_cart.dart';
import 'reviews.dart';

void main() {
  CustomerMethods userMethods = CustomerMethods();
   SellerMethods sellerMethods = SellerMethods();
   ProductMethods productMethods = ProductMethods();
   ShoppingCart shoppingCart = ShoppingCart();
   ReviewMethods reviewMethods = ReviewMethods();

  while (true) {
    print("\nE-commerce System");
    print("1. customer");
    print("2. seller");
    print("Enter your role:");
    String choice = stdin.readLineSync()!;
    switch (choice) {
      case'1':
        print("Name: ");
        String name = stdin.readLineSync()!;
        print("Email: ");
        String email = stdin.readLineSync()!;
        print("Address: ");
        String address = stdin.readLineSync()!;
        print("Phone Number: ");
        String phoneNumber = stdin.readLineSync()!;
        print("Login ID:  ");
        String loginId = stdin.readLineSync()!;
        print("Password:  ");
        String password = stdin.readLineSync()!;

        Customer newCustomer = Customer(
          name: name,
          email: email,
          address: address,
          phoneNumber: phoneNumber,
          loginId: loginId,
          password: password,
        );
        userMethods.addCustomer(newCustomer);
        productMethods.viewAllProducts();
         while(true){
           print("1. Add to cart");
           print("2. Delete from cart");
           print("3. view ur char");
           print("4. Add review");
           print("5. Delete Review");
           print("Enter your choice:");
           String choice = stdin.readLineSync()!;
           switch (choice) {
             case'1':

               break;
             case'2':
               print("Enter index of product to delete: ");
               int index = int.parse(stdin.readLineSync()!);
               shoppingCart.deleteProductFromCart(index);
               break;
             case'3':
               shoppingCart.viewAllProductsCart();
               break;
             case'4':
               print("Review ID: ");
               String reviewID = stdin.readLineSync()!;
               print("Customer ID: ");
               String customerID = stdin.readLineSync()!;
               print("Review Content: ");
               String reviewContent = stdin.readLineSync()!;
               print("Rating: ");
               int rating = int.parse(stdin.readLineSync()!);
               print("Product ID:  ");
               String productID = stdin.readLineSync()!;

               Review newReview = Review(
                   reviewID: reviewID,
                 customerID: customerID,
                 reviewContent: reviewContent,
                 rating: rating,
                 productID: productID,
               );
               reviewMethods.addReview(newReview);
               break;
             case'5':
               print("Enter index of review to delete: ");
               int index = int.parse(stdin.readLineSync()!);
               reviewMethods.deleteReview(index);
           }
         }
      case '2':
        print("Name: ");
        String name = stdin.readLineSync()!;
        print("Email: ");
        String email = stdin.readLineSync()!;
        print("Address: ");
        String address = stdin.readLineSync()!;
        print("Phone Number: ");
        String phoneNumber = stdin.readLineSync()!;
        print("Login ID:  ");
        String loginId = stdin.readLineSync()!;
        print("Password:  ");
        String password = stdin.readLineSync()!;
        print("Seller Rating:  ");
        String sellerRatingString = stdin.readLineSync()!;
        int sellerRating = int.parse(sellerRatingString);

        Seller newSeller = Seller(
          name: name,
          email: email,
          address: address,
          phoneNumber: phoneNumber,
          loginId: loginId,
          password: password,
          sellerRating: sellerRating,
        );
        sellerMethods.addSeller(newSeller);
        while(true){
          print("1. Add product");
          print("2. Delete product");
          print("Enter your choice:");
          String choice = stdin.readLineSync()!;
          switch(choice){
            case'1':
              print("productID: ");
              String productID = stdin.readLineSync()!;
              print("productName: ");
              String productName = stdin.readLineSync()!;
              print("productCost: ");
              String productCostString = stdin.readLineSync()!;
              int productCost = int.parse(productCostString);
              Product newProduct =Product(
                  productID: productID,
                  productName: productName,
                  productCost: productCost);

              productMethods.addProduct(newProduct);
              break;
            case'2':
              print("Enter index of product to delete: ");
            int index = int.parse(stdin.readLineSync()!);
            productMethods.deleteProduct(index);
            break;

          }}
    }
  }
}
