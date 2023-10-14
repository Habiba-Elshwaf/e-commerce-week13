class User{

  String name;
  String email;
  String address;
  String phoneNumber;
  String loginId;
  String password;

   User({

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