import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_texting/features/dashboard/presentation/screens/dashbard_screen.dart';
import 'package:happy_texting/features/auth_feature/presentation/screens/login_screen.dart';
import 'package:happy_texting/features/auth_feature/presentation/screens/reset_password_page.dart';

import '../../features/auth_feature/presentation/screens/forgot_password_screen.dart';
import '../../features/send_message/presentation/screens/send_message_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  'LoginPage': (context) => LoginPage(),
  'ResetPassword': (context) => ResetPassword(),
  'ForgotPassword': (context) => ForgotPassword(),
  'DashboardScreen': (context) => const DashboardScreen(),
  'SendMassageScreen': (context) => const SendMassageScreen(),
};
