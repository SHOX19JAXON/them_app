import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:them_app/utils/images/app_images.dart';

import '../modl/modl.dart';
import '../utils/styles/app_text_style.dart';

class Categories extends SliverPersistentHeaderDelegate {




  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: 100,
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...List.generate(
              list.length,
                  (index) => Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(15),
                        color:  list[index].color
                      ),
                      child: Expanded(child: Image.asset(list[index].image)),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      list[index].name,
                      style: AppTextStyle.interSemiBold.copyWith(fontSize: 12),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 100.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
List<CategoryModel> list = [
  CategoryModel(name: "vegitable", image: AppImages.vegitables, color: Colors.green.withOpacity(0.5),),
  CategoryModel(name: "Fruit", image: AppImages.fruit, color: Colors.green.withOpacity(0.5)),
  CategoryModel(name: "side", image: AppImages.side, color: Colors.green.withOpacity(0.5)),
  CategoryModel(name: "ingrdents", image: AppImages.ingrdents, color: Colors.green.withOpacity(0.5)),
  CategoryModel(name: "spic", image: AppImages.spice, color: Colors.green.withOpacity(0.5))
];
