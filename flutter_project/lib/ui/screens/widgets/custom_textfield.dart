import 'package:flutter/material.dart';
import 'package:flutter_project/constants.dart';
class CustomTextfield extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;

  const CustomTextfield({
    Key? key, required this.icon, required this.obscureText, required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Constants.blackColor,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(), // Đường viền mặc định
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0), // Khi không focus
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0), // Khi focus
        ),
        prefixIcon: Icon(icon, color: Colors.black,),
        hintText: hintText,
        hintStyle: TextStyle(
        color: Colors.grey, // Đặt màu cho hint text
      ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0), // Căn giữa theo chiều dọc
      ),
      cursorColor: Constants.blackColor.withOpacity(.5),
    );
  }
}