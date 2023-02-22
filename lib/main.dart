import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/helpers/app_router.dart';
import 'package:happy_texting/features/my_text_word/data/cubits/text_words_cubit/text_words_cubit.dart';

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
          return BlocProvider(
            create: (context) => TextWordsCubit(),
            child: MaterialApp(
              routes: appRoutes,
              initialRoute: 'MyTextWordScreen',
              debugShowCheckedModeBanner: false,
            ),
          );
        });
  }
}
