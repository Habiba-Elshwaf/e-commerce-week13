class Customer {

  String name;
  String email;
  String address;
  String phoneNumber;
  String loginId;
  String password;

  Customer({

    required this.name,
    required this.email,
    required this.address,
    required this.phoneNumber,
    required this.loginId,
    required this.password,
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
    ''';
  }
}
class CustomerMethods{
  List<Customer> customers = [];
  void addCustomer(Customer customer) {
    customers.add(customer);
  }
}