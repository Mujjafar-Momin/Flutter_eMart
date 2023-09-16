import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/utils/bg_widget.dart';
import 'package:emart_app/views/profile_screen/components/details_card.dart';
import 'package:get/utils.dart';

import '../../consts/list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: const Icon(
                Icons.edit,
                color: whiteColor,
              ).onTap(() {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "User name".text.fontFamily(semibold).white.make(),
                        "user@gmail.com".text.white.make()
                      ],
                    ),
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: whiteColor)),
                      onPressed: () {},
                      child: "Logout".text.white.fontFamily(semibold).make())
                ],
              ),
            ),
            10.heightBox,
            Row(
              children: [
                detailsCard(
                    count: "00",
                    text: "In your card",
                    height: context.height,
                    width: context.width),
                detailsCard(
                    count: "40",
                    text: "In your wishlist",
                    height: context.height,
                    width: context.width),
                detailsCard(
                    count: "390",
                    text: "In your orderlist",
                    height: context.height,
                    width: context.width),
              ],
            ),
            ListView.separated(
              itemCount: profileButtonList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    profileButtonIconList[index],
                    width: 22,
                  ),
                  title: profileButtonList[index]
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(color: darkFontGrey);
              },
            )
                .box
                .rounded
                .margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .white
                .make()
                .box
                .color(redColor)
                .make()
          ]),
        ),
      ),
    ));
  }
}
