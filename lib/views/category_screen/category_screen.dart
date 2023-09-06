import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/utils/bg_widget.dart';
import 'package:emart_app/views/category_screen/categories_detail.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: categories.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoryImageList[index],
                    width: 200,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  "${categoryTitleList[index]}"
                      .text
                      .align(TextAlign.center)
                      .color(darkFontGrey)
                      .make()
                ],
              )
                  .box
                  .roundedSM
                  .clip(Clip.antiAlias)
                  .white
                  .outerShadowSm
                  .make()
                  .onTap(() {
                Get.to(() => CategoryDetail(
                      title: categoryTitleList[index],
                    ));
              });
            }),
      ),
    ));
  }
}
