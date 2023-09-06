import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/utils/button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        // backgroundColor: whiteColor,
        title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined))
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //swiper
                    VxSwiper.builder(
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        height: 350,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                    10.heightBox,
                    title!.text
                        .fontFamily(bold)
                        .color(darkFontGrey)
                        .size(18)
                        .make(),
                    10.heightBox,
                    VxRating(
                      onRatingUpdate: (value) {},
                      count: 5,
                      selectionColor: golden,
                      stepInt: true,
                      size: 25,
                    ),
                    10.heightBox,
                    "\$30,000"
                        .text
                        .fontFamily(bold)
                        .size(18)
                        .color(redColor)
                        .make(),
                    //Seller
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Seller".text.white.fontFamily(semibold).make(),
                            5.heightBox,
                            "In House Products"
                                .text
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .make()
                          ],
                        )),
                        const CircleAvatar(
                          backgroundColor: whiteColor,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ),
                        )
                      ],
                    )
                        .box
                        .color(textfieldGrey)
                        .height(60)
                        .padding(const EdgeInsets.symmetric(horizontal: 16))
                        .make(),
                
                    //color section
                    10.heightBox,
                    Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Color: ".text.make(),
                              ),
                              Row(
                                children: List.generate(
                                    3,
                                    (index) => VxBox()
                                        .size(40, 40)
                                        .margin(const EdgeInsets.all(8))
                                        .color(Vx.randomPrimaryColor)
                                        .roundedFull
                                        .make()),
                              )
                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),
                        ),
                
                        //quntity row 
                        Expanded(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Color: ".text.make(),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                                   "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                  ],
                                  ),
                              )
                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),
                        ),
                    Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color: ".text.make(),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                 IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                                 "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                ],
                                ),
                            )
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make()
                     ],
                    ).box.white.shadowSm.make(),
                  ],
                ),
              )
            ]),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: commonButton(
                onPressed: () {},
                color: redColor,
                textColor: whiteColor,
                title: "Add to cart"),
          ),
          // 10.heightBox
        ],
      ),
    );
  }
}
