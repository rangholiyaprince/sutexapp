import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutexapp/app/data/theme/colors.dart';
import 'package:sutexapp/app/data/theme/theme_enums.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ScreenUtilInit(
      designSize: const Size(372, 812),
      builder: (context, child) {
        return GetMaterialApp(
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          home: child,
          theme: ThemeData(
              fontFamily: FontFamily.roboto.name,
              primaryColor: AppColors.primary,
              appBarTheme:
                  const AppBarTheme(backgroundColor: AppColors.primary)),
        );
      },
    ),
  );
}
