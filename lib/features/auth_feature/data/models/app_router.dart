import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_texting/features/auth_feature/presentation/screens/dashbard_screen.dart';
import 'package:happy_texting/features/auth_feature/presentation/screens/login_screen.dart';
import 'package:happy_texting/features/auth_feature/presentation/screens/reset_password_page.dart';

import '../../presentation/screens/forgot_password_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  'LoginPage': (context) => LoginPage(),
  'ResetPassword': (context) => ResetPassword(),
  'ForgotPassword': (context) => ForgotPassword(),
  'DashboardScreen': (context) => const DashboardScreen(),
};
