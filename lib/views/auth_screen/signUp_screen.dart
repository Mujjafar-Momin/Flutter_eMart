import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../../utils/bg_widget.dart';
import '../../utils/button.dart';
import '../../utils/common_appLogo_widgets.dart';
import '../../utils/custom_textField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool?  isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * .1).heightBox,
            appLogoContainer(),
            10.heightBox,
            "Sign Up to $appname".text.fontFamily(bold).size(18).white.make(),
            15.heightBox,
            Column(
              children: [
                customTextField(title: name, hint: nameHint),
                5.heightBox,
                customTextField(title: email, hint: emailHint),
                5.heightBox,
                customTextField(title: password, hint: passwordHint),
                5.heightBox,
                customTextField(title: retypePassword, hint: passwordHint),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                        value: isCheck,
                        activeColor: redColor,
                        checkColor: whiteColor,
                        onChanged: (newVal) {
                          setState(() {
                            isCheck = newVal;
                          });
                        }),
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                                fontFamily: regular, color: fontGrey)),
                        TextSpan(
                            text: termsAndCond,
                            style: TextStyle(
                                fontFamily: bold, color: redColor)),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                                fontFamily: regular, color: fontGrey)),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                                fontFamily: bold, color: redColor)),
                      ])),
                    )
                  ],
                ),
                10.heightBox,
                commonButton(
                        color:isCheck==true? redColor:lightGrey,
                        onPressed: () {},
                        title: sigun,
                        textColor: whiteColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  alreadyHaveAccnt.text.color(fontGrey).make(),
                  login.text.color(redColor).fontFamily(bold).make().onTap(() {
                    Get.back();
                  })

                ],
               )
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
