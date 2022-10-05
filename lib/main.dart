import 'package:flutter/material.dart';
import 'package:login_ui/dashboard.dart';
import 'package:login_ui/home_screen.dart';
import 'package:login_ui/signUp.dart';

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
      title: 'Flutter Demo',
     initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SignUp.routeName : (context) => SignUp(),
        DashBoard.routeName: (context) => DashBoard(),

      },
    );
  }
}


