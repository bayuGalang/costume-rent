import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/app/custom_widget.dart';
import 'package:todolist/app/modules/login/views/register_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xff09703E),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          carrosel(),
          Text(
            "Silahkan Login",
            style: GoogleFonts.albertSans(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ).animate().fadeIn(duration: 700.ms).slide(),
          Text(
            "Satu Klik Menuju Kontrol Penuh",
            style: GoogleFonts.albertSans(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 16),
          ).animate().fadeIn(duration: 700.ms).slide(),
          SizedBox(
            height: 50,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 2.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customTextfield(context, "Masukan Email Anda", false,
                        Icons.email_outlined, controller)
                    .animate().fadeIn(duration: 700.ms).slide(),
                customTextfield(context, "Masukan Password Anda", true,
                        Icons.password, controller)
                    .animate().fadeIn(duration: 700.ms).slide(),
                SizedBox(
                  height: 10,
                ),
                fillButton(context, "Login", (){}),
                Container(
                  width: MediaQuery.sizeOf(context).width / 2,
                  height: 35,
                  margin: EdgeInsets.only(bottom: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Row(
                        children: [
                          Image.asset("assets/images/google.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Login With Google",
                            style: GoogleFonts.albertSans(fontSize: 15),
                          )
                        ],
                      )),
                ).animate().fadeIn(duration: 700.ms).slide(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum Memiliki Akun ? ",
                      style: GoogleFonts.albertSans(fontSize: 12),
                    ).animate().fadeIn(duration: 700.ms),
                    GestureDetector(
                        onTap: () {
                          Get.to(RegisterView(),
                              transition: Transition.fadeIn);
                        },
                        child: Text(
                          "Register",
                          style: GoogleFonts.albertSans(
                              fontSize: 12, color: Colors.blue),
                        )).animate().fadeIn(duration: 700.ms).slide(),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget carrosel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: CarouselSlider(items: [
        Image.asset("assets/images/icon1.png"),
        Image.asset("assets/images/icon2.png"),
        Image.asset("assets/images/icon3.png"),
      ], options: CarouselOptions(autoPlay: true)),
    );
  }
}
