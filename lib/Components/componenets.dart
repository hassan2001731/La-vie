import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.green,
  bool isUpperCase = true,
  double radius = 10.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 40,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );
Widget defaultformfield({
  required TextEditingController controller,
  required TextInputType type,
  bool isPasssword = false,
  String? Function(String?)? onSubmit,
  String? Function(String?)? onChange,
  required String label,
  IconData? prefix,
  Function? suffixPressed,
  Function()? onTap,
  bool isClickable = true,
  required String? Function(String?)? validate,
  IconData? suffix,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      enabled: isClickable,
      obscureText: isPasssword,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,

      validator: validate,

      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed!();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );


Widget defaultfield({
required TextEditingController Controller,
// required TextInputType type,
bool Name = false,
String? Function(String?)?onSubmit,
String? Function(String?)?onChange,
required String label,
// required IconData prefix,
Function? suffixPressed,
Function()? onTap,
bool isClickable=true,
required String? Function(String?)? validate,
IconData?suffix,
}) =>TextField(
  decoration: InputDecoration(
      hintText: "Your Name",
      labelText: "Name",
      labelStyle: TextStyle(fontSize: 24, color: Colors.black),
      border: InputBorder.none,
      fillColor: Colors.black12,
      filled: true),
  obscureText: false,
  maxLength: 20,
);