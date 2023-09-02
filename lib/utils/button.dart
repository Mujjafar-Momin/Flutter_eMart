import 'package:emart_app/consts/consts.dart';

Widget commonButton({onPressed, color, textColor, String? title}) {
  return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
          primary: color,
          padding: const EdgeInsets.all(12)),
      child: title!.text.color(textColor).fontFamily(bold).size(16).make());
}
