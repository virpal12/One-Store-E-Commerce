
class UserModel {

  final String firstname;
  final String lastname;
  final String email;
  final String phone;
  final String password;


  UserModel({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.phone,
    required this.password
  });

  Map<String, dynamic> toJason () {
    return {
    "f_name":firstname,
    "l_name":lastname,
    "email":email,
    "phone":phone,
    "password": password

};
}
}