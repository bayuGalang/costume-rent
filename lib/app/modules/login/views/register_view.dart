import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/app/custom_widget.dart';
import 'package:todolist/app/modules/login/views/login_view.dart';
import '../controllers/login_controller.dart';

class RegisterView extends GetView<LoginController> {
  const RegisterView({Key? key}) : super(key: key);
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
            "Silahkan Register",
            style: GoogleFonts.albertSans(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ).animate().fadeIn(duration: 700.ms).slide(),
          Text(
            "Satu Langkah Lagi",
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
                    Icons.email_outlined, controller).animate().fadeIn(duration: 700.ms).slide(),
                customTextfield(context, "Masukan Password Anda", true,
                    Icons.password, controller).animate().fadeIn(duration: 700.ms).slide(),
                SizedBox(
                  height: 10,
                ),
                fillButton(context, "Register", (){}),
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
                      "Sudah Punya Akun ? ",
                      style: GoogleFonts.albertSans(fontSize: 12),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(LoginView(), transition: Transition.fadeIn);
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.albertSans(
                              fontSize: 12, color: Colors.blue),
                        )),
                  ],
                ).animate().fadeIn(duration: 700.ms).slide()
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
