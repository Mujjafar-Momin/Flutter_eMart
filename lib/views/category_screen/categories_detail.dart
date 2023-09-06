import 'package:emart_app/utils/bg_widget.dart';
import 'package:emart_app/views/category_screen/item_details.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/route_manager.dart';

class CategoryDetail extends StatelessWidget {
  final String? title;
  const CategoryDetail({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          child: Column(children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding:const EdgeInsets.all(12),
              child: Row(
                children: List.generate(6, (index) => title!.text.makeCentered().box.white.margin(const EdgeInsets.symmetric(horizontal: 6)).size(120, 60).roundedSM.make()),
              ),
            )
          ,
          20.heightBox,
          Expanded(
            child: Container(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 250), itemBuilder: (context,index){
                return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP1,
                              height: 120,
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
                            .outerShadowSm
                            .make().onTap(() {
                              Get.to(()=>const ItemDetails(title: "Dummy Title",));
                            });
              }),
            ),
          )
          ]),
        ),
      ),
    );
  }
}