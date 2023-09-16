import 'package:emart_app/consts/consts.dart';

Widget detailsCard(
    {required double height,
    required double width,
    required String count,
    required String text}) {
  return Expanded(
    child: Column(
      children: [
        count.text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
        5.heightBox,
        text.text.color(darkFontGrey).make(),
      ],
    )
        .box
        .white
        .rounded
        .margin(const EdgeInsets.symmetric(horizontal: 6))
        .padding(const EdgeInsets.all(8))
        .height(height *.1)

        .width(width / 3.4)
        .make(),
  );
}
