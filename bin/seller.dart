class Seller {
  String name;
  String email;
  String address;
  String phoneNumber;
  String loginId;
  String password;
  int sellerRating;

  Seller({
    required this.name,
    required this.email,
    required this.address,
    required this.phoneNumber,
    required this.loginId,
    required this.password,
    required this.sellerRating,
    });
  @override
  String toString() {
    return '''
     Name: $name
      Email: $email
      Address: $address
      Phone Number: $phoneNumber
      Login ID : $loginId
      Password : $password 
      SellerRating: $sellerRating
    ''';
  }
}
class SellerMethods{
  List<Seller> sellers = [];
  void addSeller(Seller seller) {
    sellers.add(seller);
  }
}