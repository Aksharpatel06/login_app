import 'package:flutter/material.dart';
import 'package:login_app/screen/login_page.dart';
import 'package:login_app/screen/playscreen.dart';
import 'package:login_app/screen/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/login',
      routes: {
        '/':(context)=>playscreen(),
        '/login':(context)=>loginpage(),
        '/register':(context)=>register(),
      },
    );
  }
}