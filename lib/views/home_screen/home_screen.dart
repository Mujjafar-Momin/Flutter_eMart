import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/utils/home_button.dart';
import 'package:emart_app/views/home_screen/components/featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      padding: const EdgeInsets.all(12),
      height: context.screenHeight,
      width: context.screenWidth,
      child: SafeArea(
        child: Column(
          children: [
            //search bar
            Container(
             height: 60,
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: searchAnyThing,
                    fillColor: whiteColor,
                    filled: true,
                    suffixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),
            //slider 1
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  //slider
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      height: 150,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      itemCount: sliderList.length,
                      itemBuilder: ((context, index) {
                        return Image.asset(
                           sliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .rounded
                            .make();
                      })),
                  10.heightBox,
                  //home buttons
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButton(
                              height: context.screenHeight * .15,
                              width: context.screenWidth / 2.5,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todayDeal : flashSale))),
                  10.heightBox,

                  //second slider
                 VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      height: 150,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      itemCount: secondSliderList.length,
                      itemBuilder: ((context, index) {
                        return Image.asset(
                          secondSliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .rounded
                            .make();
                      })),
                  10.heightBox,

                  //featured button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) => homeButton(
                          height: context.screenHeight * .15,
                          width: context.screenWidth / 3.5,
                          icon: index == 0
                              ? icTopCategories
                              : index == 1
                                  ? icBrands
                                  : icTopSeller,
                          title: index == 0
                              ? topCat
                              : index == 1
                                  ? brands
                                  : topSellers),
                    ),
                  ),
                  20.heightBox,

                  //featured categories
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCat.text
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .size(18)
                          .make()),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  featuredButton(
                                      icon: featuredIcon1[index],
                                      title: featuredTitle1[index]),
                                  10.heightBox,
                                  featuredButton(
                                      icon: featuredIcon2[index],
                                      title: featuredTitle2[index])
                                ],
                              )),
                    ),
                  ),
                  20.heightBox,

                  //featured product
                  Container(
                    color: redColor,
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text
                              .fontFamily(bold)
                              .size(18)
                              .white
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          10.heightBox,
                                          "Laptop 8GBRAM/1TB"
                                              .text
                                              .fontFamily(semibold)
                                              .color(darkFontGrey)
                                              .make(),
                                          10.heightBox,
                                          "\$600"
                                              .text
                                              .color(redColor)
                                              .size(16)
                                              .fontFamily(bold)
                                              .make()
                                        ],
                                      )
                                          .box
                                          .white
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .padding(const EdgeInsets.all(8))
                                          .roundedSM
                                          .make()),
                            ),
                          )
                        ]),
                  ),
                  20.heightBox,

                  //slider 3
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      height: 150,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      itemCount: secondSliderList.length,
                      itemBuilder: ((context, index) {
                        return Image.asset(
                          secondSliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .rounded
                            .make();
                      })),
                  20.heightBox,
                  //all product section

                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 4,
                              mainAxisExtent: 300),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP1,
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            const Spacer(),
                            "Laptop 8GBRAM/1TB"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            10.heightBox,
                            "\$600"
                                .text
                                .color(redColor)
                                .size(16)
                                .fontFamily(bold)
                                .make()
                          ],
                        )
                            .box
                            .white
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .padding(const EdgeInsets.all(12))
                            .roundedSM
                            .make();
                      })
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
