import 'package:doctor_app_adv/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
class DocApp extends StatelessWidget {
  final AppRouter appRouter;
   const DocApp({super.key,required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
         primaryColor:ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute:  Routes.onboarding,
        onGenerateRoute: appRouter.onGenerateRoute,
      )

    );
  }
}
