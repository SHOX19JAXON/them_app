import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../utils/images/app_images.dart';

class Bot extends StatelessWidget {
  const Bot({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(hafta.length, (index) => Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Text(hafta[index],style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(


                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      border: Border.all(
                          width: 1,
                          color: Colors.black
                      )

                  ),
                  child: Column(
                    children: [
                      // Image.asset(AppImages.bulut),
                      SizedBox(height: 5.h,),
                      Row(

                        children: [
                          // Spacer(),
                          Text(gradus[index],style: TextStyle(
                              fontSize: 50,
                              color: Colors.black
                          ),),
                          SizedBox(width: 1.w,),
                          // Text("C",style: TextStyle(
                          //     fontSize: 50,
                          //     color: Colors.black
                          // ),),
                          // Spacer(),
                        ],
                      )
                    ],
                  ),

                ),
              ),
            ],
          ),
        ),)
      ],
    );
  }
}
List<String> hafta = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
List<String> gradus = ["10 C","8 C","12 C","11 C","15 C","7 C","9 C"];