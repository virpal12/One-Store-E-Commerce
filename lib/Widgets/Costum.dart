import 'package:flutter/material.dart';

class Costum {
  static textField(
      String? text, TextEditingController? Controller, IconData? iconData) {
    return TextField(
      controller: Controller,
      decoration: InputDecoration(
        hintText: text,
        prefixIcon: Icon(iconData),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.black, width: 2)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.orange, width: 2),
        ),
      ),
    );
  }

  static Button(void Function()? onPressed, ) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Sign Up'),
      style: ElevatedButton.styleFrom(minimumSize: Size(400, 50)),
    );
  }
}
