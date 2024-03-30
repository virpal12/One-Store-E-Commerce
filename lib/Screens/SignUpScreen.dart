import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:one_store/Model/User.dart';
import 'package:one_store/Widgets/Costum.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(),
            Container(
              

              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
              ),

              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Costum.textField('First Name', firstname, Icons.person),
              //     SizedBox(height: 5,),
              //     Costum.textField('Last Name', lastname, Icons.person),
              //     SizedBox(height: 5,),
              //     Costum.textField('Email', email, Icons.mail),
              //     SizedBox(height: 5,),
              //     Costum.textField('Phone', phone, Icons.mobile_friendly_rounded),
              //     SizedBox(height: 5,),
              //     Costum.textField(
              //         'Password', password, Icons.remove_red_eye_outlined),
              //     SizedBox(height: 15,),
              //     Costum.Button(() {
              //       postData();
              //       },
              //
              //     )
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> postData() async {
    final url = "https://www.infusevalue.live/api/v1/auth/register";
    UserModel userModel = UserModel(
        firstname: firstname.text.toString(),
        lastname: lastname.text.toString(),
        email: email.text.toString(),
        phone: phone.text.toString(),
        password: password.text.toString());
    final response = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(userModel.toJason()));

    if (response.statusCode == 200) {
      print('Data Send Success');
      print(response.body);
    } else {
      print('Data not Send Success');
      print(response.statusCode);
    }
  }
}
