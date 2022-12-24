import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/features/auth_feature/data/models/app_router.dart';

void main() {
  runApp(const HappyTexting());
}

class HappyTexting extends StatelessWidget {
  const HappyTexting({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            routes: appRoutes,
            initialRoute: 'LoginPage',
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
