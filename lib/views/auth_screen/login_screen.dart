import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/utils/bg_widget.dart';
import 'package:emart_app/utils/button.dart';
import 'package:emart_app/utils/common_appLogo_widgets.dart';
import 'package:emart_app/utils/custom_textField.dart';
import 'package:emart_app/views/auth_screen/signUp_screen.dart';
import 'package:emart_app/views/home_screen/bottom_navBar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            "Login in to $appname".text.fontFamily(bold).size(18).white.make(),
            15.heightBox,
            Column(
              children: [
                customTextField(title: email, hint: emailHint),
                customTextField(title: password, hint: passwordHint),
                Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                5.heightBox,
                commonButton(
                        color: redColor,
                        onPressed: () {
                          Get.to(()=>const BottomNavBar());
                        },
                        title: login,
                        textColor: whiteColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createNewAccnt.text.color(fontGrey).make(),
                5.heightBox,
                commonButton(
                        color: lightGolden,
                        onPressed: () {
                          Get.to(()=>const SignUpScreen());
                        },
                       title: sigun,
                        textColor: redColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                loginInWith.text.color(fontGrey).make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25,
                              child: Image.asset(socialIconList[index],width: 30,),
                            ),
                      )),
                )
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70).shadowSm
                .make(),
         ],
        ),
      ),
    ));
  }
}
