import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:them_app/data/models/detail/one_call_data.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:them_app/data/models/my_response.dart';
import 'package:them_app/data/models/simple/weather_main_model.dart';
import 'package:them_app/data/repository/weather_repository.dart';
import 'package:them_app/utils/colors/app_colors.dart';
import 'package:them_app/utils/extensions/my_extensions.dart';
import 'package:them_app/utils/images/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isDark = false;

  _init() async {
    isDark = await AdaptiveTheme.getThemeMode() == AdaptiveThemeMode.dark;
    setState(() {});
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

// String city = "Samarkand";




  final WeatherRepository weatherRepository = WeatherRepository();
  String city = "Samarkand";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: FutureBuilder(
        future: weatherRepository.getSimpleWeatherInfo(city),
        builder: (context, data) {
          if (data.hasError) {
            return Center(
              child: Text(
                data.error.toString(),
              ),
            );
          }
          if (data.hasData) {
            WeatherMainModel weatherMainModel =
            (data.data as MyResponse).data as WeatherMainModel;
            return Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10.h,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: TextField(
                            onSubmitted: (value){city=value;
                            setState(() {
                          
                            });},
                            

                            decoration: InputDecoration(

                                floatingLabelBehavior:
                                FloatingLabelBehavior.always,
                                fillColor: Colors.transparent,

                                prefixIcon: const Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: Icon(Icons.search),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 14),
                                hintText: "Enter city",
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 14),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.white),
                                    borderRadius:
                                    BorderRadius.circular(12)),
                                disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.c_072832.withOpacity(.6)),
                                    borderRadius:
                                    BorderRadius.circular(12)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.c_072832.withOpacity(.6)),
                                    borderRadius:
                                    BorderRadius.circular(12))),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Switch(
                            value: isDark,
                            onChanged: (v) async {
                              if (v) {
                                AdaptiveTheme.of(context).setDark();
                              } else {
                                AdaptiveTheme.of(context).setLight();
                              }
                              isDark = v;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
              
              
                  Text(
                    weatherMainModel.dateTime.getParsedDate(),
                   // style: const TextStyle(fontSize: 16, color: Colors.white),
                    style: Theme.of(context).textTheme.titleMedium
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    weatherMainModel.name ,
                    style: Theme.of(context).textTheme.displaySmall
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: 165.w,
                    height: 165.h,
                    decoration:   BoxDecoration(
                        boxShadow: [BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            spreadRadius: 5
                        )],
                        shape: BoxShape.circle,  color: isDark ? Colors.black.withOpacity(0.8):Colors.blue   ,),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
                              weatherMainModel.weatherModel[0].icon
                                  .getWeatherIconUrl(),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Text(
                                "${(weatherMainModel.mainInMain.temp - 273.15).round()}℃"
                                    .toString(),
                                style: const TextStyle(
                                    fontSize: 50, color: Colors.white),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              const Spacer(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
              
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          const Text(
                            "Wind status",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "${weatherMainModel.windInMain.speed} mph",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 5.h,),
                          Container(width: 100.w,
                            height: 3.h,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                  offset: Offset(0,2),
                                  color: Colors.white,
                                  blurRadius: 15,
                                  spreadRadius: 3
                              )],
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          const Text(
                            "Humidity",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "${weatherMainModel.mainInMain.humidity}%",
                            style: const TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 5.h,),
                          Container(width: 100.w,
                            height: 3.h,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                  offset: Offset(0,2),
                                  color: Colors.white,
                                  blurRadius: 15,
                                  spreadRadius: 3
                              )],
                            ),),
                        ],
                      ),
                      // SizedBox(width: 80.w,),
                      Spacer(),
              
                      Column(
              
                        children: [
                          const Text(
                            "Visibility",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "${weatherMainModel.visibility / 1000} miles",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 5.h,),
                          Container(width: 100.w,
                            height: 3.h,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                  offset: Offset(0,2),
                                  color: Colors.white,
                                  blurRadius: 15,
                                  spreadRadius: 3
                              )],
                            ),),
                          SizedBox(height: 20.h,),
                          const Text(
                            "Air pressure",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "${weatherMainModel.mainInMain.pressure} mb",
                            style: const TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 5.h,),
                          Container(width: 100.w,
                            height: 3.h,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                  offset: Offset(0,2),
                                  color: Colors.white,
                                  blurRadius: 15,
                                  spreadRadius: 3
                              )],
                            ),),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
              
              
                  const Spacer(),
                  Container(
                    decoration:   BoxDecoration(
                      border: Border.all(
                        width: 1,color: Colors.white
                      ),
                      color: isDark ? Colors.black:Colors.white   ,
                      borderRadius: BorderRadius.only(

                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                           Text(
                            "The Next 7 days",
                            style: TextStyle(fontSize: 20, color: isDark ? Colors.white : Colors.black),
                          ),
                          SizedBox(height: 10.h,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: FutureBuilder(
                              future: weatherRepository.getComplexWeatherInfo(),
                              builder: (context, data) {
                                if (data.hasError) {
                                  return Center(
                                    child: Text(
                                      data.error.toString(),
                                    ),
                                  );
                                }
                                if (data.hasData) {
                                  OneCallData oneCallData =
                                  (data.data as MyResponse).data as OneCallData;
                                  return Row(
                                    children: [
                                      ...List.generate(
                                        oneCallData.daily.length,
                                            (index) => Container(
                                          margin:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.w,
                                            vertical: 8.h,
                                          ),
                                          decoration: BoxDecoration(
                                            // color: Colors.grey.shade300,
                                              borderRadius:
                                              BorderRadius.circular(40.r),
                                              color: isDark ? AppColors.white.withOpacity(0.1):AppColors.c_409DB9.withOpacity(0.7) ),
                                          child: Column(
                                            children: [
                                              Text(
                                                oneCallData.daily[index].dt
                                                    .getParsedDateDay(),
                                                style:  TextStyle(
                                                  color: isDark? AppColors.white: AppColors.black,
                                                ),
                                              ),
                                              Image.network(
                                                oneCallData
                                                    .daily[index].weather[0].icon
                                                    .getWeatherIconUrl(),
                                              ),
                                              Text(
                                                "${oneCallData.daily[index].dailyTemp.day.round().toString()} c",
                                                style:  TextStyle(
                                                    color: isDark? AppColors.white: AppColors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                } else {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
