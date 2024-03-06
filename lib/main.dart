import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:them_app/utils/colors/app_colors.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:them_app/utils/theme/app_theme.dart';
import 'screen/home_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,

        builder: (_ , child) {



          return AdaptiveTheme(
            light: AppTheme.lightTheme,
            dark: AppTheme.darkTheme,
            initial: AdaptiveThemeMode.system,
            builder: (theme, darkTheme) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: theme,
                darkTheme: darkTheme,
                home: HomeScreen(),
              );
            },
          );
        },
        child:const HomeScreen()

    );
  }
}