import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customTextfield(
  context,
  String hintText,
  var obscure,
  var icon,
  var Controller,
) {
  return Container(
    width: MediaQuery.sizeOf(context).width / 1.2,
    height: 50,
    margin: EdgeInsets.all(5),
    child: TextField(
      controller: Controller,
      obscureText: obscure,
      decoration: InputDecoration(
          icon: Icon(icon),
          filled: true,
          hintText: hintText,
          fillColor: Color(0x3A000000),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10))),
    ),
  );
}

Widget fillButton(context, title, var ontap) {
  return Container(
    width: MediaQuery.sizeOf(context).width / 3,
    height: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xff09703E),
    ),
    child: TextButton(
        onPressed: ontap,
        child: Text(
          title,
          style: GoogleFonts.albertSans(color: Colors.white, fontWeight: FontWeight.bold),
        )),
  ).animate().fadeIn(duration: 700.ms).slide();
}
