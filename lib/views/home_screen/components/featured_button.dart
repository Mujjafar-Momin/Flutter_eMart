import 'package:emart_app/consts/consts.dart';

Widget featuredButton({String? title,icon}){
  return Row(children: [
    Image.asset(icon,width: 60,fit: BoxFit.fill,),
    title!.text.color(darkFontGrey).fontFamily(semibold).make()
  ],).box.white.padding(const EdgeInsets.all(4)).margin(const EdgeInsets.symmetric(horizontal: 4)).width(200).roundedSM.outerShadowSm.make();
}