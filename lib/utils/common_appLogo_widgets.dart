import 'package:emart_app/consts/consts.dart';

 Widget appLogoContainer(){
  return Container(
    child: Image.asset(icAppLogo).box.size(77, 77).white.padding(const EdgeInsets.all(8)).rounded.make(),
  );
}