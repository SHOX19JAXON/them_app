import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:them_app/utils/colors/app_colors.dart';
import 'package:them_app/utils/images/app_images.dart';
import 'package:them_app/utils/styles/app_text_style.dart';

import 'gidgets/Category_itms.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 160,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Hallo,",
                            style: AppTextStyle.interThin
                                .copyWith(color: Colors.black, fontSize: 16)),
                        TextSpan(
                            text: " Fahmi",
                            style: AppTextStyle.interSemiBold
                                .copyWith(color: Colors.orange, fontSize: 18))
                      ]),
                    ),
                  ],
                ),
                Text(
                  """Find The Right One For 
A Healthier Body""",
                  style: AppTextStyle.interBold
                      .copyWith(color: Colors.black, fontSize: 18),
                  maxLines: 2,
                )
              ],
            ),
            actions: const [
              Icon(Icons.alarm),
              SizedBox(
                width: 10,
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            style: AppTextStyle.interSemiBold
                                .copyWith(color: Colors.white),
                            decoration: InputDecoration(
                              prefix: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              hintText: "Searvh",
                              hintStyle: AppTextStyle.interRegular.copyWith(
                                fontSize: 20,
                                color: AppColors.black.withOpacity(0.5),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.transparent,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {},
                          child: Icon(Icons.menu),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text("Category",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Spacer(),
                        Text("Show all",
                            style: TextStyle(color: Colors.black, fontSize: 16))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: Categories(),
            pinned: true,
          ),
          SliverGrid.count(

            crossAxisCount: 1,
            children: [
              ...List.generate(10, (index) => Container(
                width: 100,
                height: 100,
                child: Image.asset(AppImages.spice),
              ))
            ],
          )
        ],
      ),
    );
  }
}
