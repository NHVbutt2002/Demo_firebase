import 'package:firebase/login/forgot_password.dart';
import 'package:firebase/login/login.dart';
import 'package:firebase/profile/profile.dart';
import 'package:firebase/login/signup.dart';
import 'package:firebase/utils/routers_constants.dart';
import 'package:flutter/material.dart';

class RouterUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case intinalRouter:
        return MaterialPageRoute(builder: (_) => const Login());
      case signup1Router:
        return MaterialPageRoute(builder: (_) => const Signup());
      case profile1Router:
        return MaterialPageRoute(builder: (_) => const Profile());
      case forgot1Router:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
