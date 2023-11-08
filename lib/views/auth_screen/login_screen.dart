import 'package:flutter/material.dart';
import 'package:starlive_app/consts/colors.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/custom_widgets/our_button.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const OurText(
            fontSize: 16,
            fontBold: FontWeight.w500,
            text: "Skip",
          ),
          10.widthBox,
        ],
      ),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OurText(
                    text: "Log In",
                    fontBold: FontWeight.bold,
                    fontSize: 32,
                  ),
                  20.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                  color: Colors.grey,
                                ),
                              ]),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                google,
                                height: 30,
                                width: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        10.widthBox,
                        const OurText(
                          text: "Continue with Google",
                          fontBold: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ),
                  20.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                  color: Colors.grey,
                                ),
                              ]),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                apple,
                                height: 30,
                                width: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        10.widthBox,
                        const OurText(
                          text: "Continue with Apple",
                          fontBold: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ),
                  50.heightBox,
                  const Center(
                    child: OurText(
                      text: "( or )",
                      fontSize: 20,
                    ),
                  ),
                  20.heightBox,

                  /// Our Button
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: pinkColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 2, top: 2, bottom: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const OurText(
                              textColor: Colors.white,
                              text: "Sign in with your Phone number",
                              fontSize: 14,
                              fontBold: FontWeight.bold,
                            ),
                            const Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: pinkColor,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  20.heightBox,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OurText(
                        text: "Don’t have an Account? ",
                      ),
                      OurText(
                        textColor: pinkColor,
                        text: "SIGN UP",
                        fontSize: 20,
                        fontBold: FontWeight.w600,
                        underLine: TextDecoration.underline,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
