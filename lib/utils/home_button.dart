import 'package:emart_app/consts/consts.dart';

Widget homeButton({width,height,onPressed,icon,String? title}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon,width: 26,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.white.rounded.shadowSm.size(width, height).make();
}