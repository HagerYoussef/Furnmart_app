import 'package:e_commerce/forget_password.dart';
import 'package:e_commerce/home_screen.dart';
import 'package:e_commerce/login_screen.dart';
import 'package:e_commerce/otp.dart';
import 'package:e_commerce/register_screen.dart';
import 'package:e_commerce/restert_password.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (_) =>HomeScreen(),
        Login.routeName: (_) =>Login(),
        Register.routeName: (_) =>Register(),
        Forget.routeName: (_) =>Forget(),
        OTP.routeName: (_) =>OTP(),
        Reset.routeName: (_) =>Reset(),
      },
    );
  }
}
