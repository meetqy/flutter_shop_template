import 'package:flutter/material.dart';
import 'pages/account/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        backgroundColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xff333333),
          ),
          headline2: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff333333),
          ),
          headline3: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff333333),
          ),
          headline4: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff333333),
          ),
          bodyText1: TextStyle(
            fontSize: 14,
            color: Color(0xff333333),
          ),
          bodyText2: TextStyle(
            fontSize: 12,
            color: Color(0xff333333),
          ),
          subtitle1: TextStyle(
            fontSize: 14,
            color: Color(0xff333333),
          ),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.system,
      routes: {'/login': (context) => const LoginPage()},
      initialRoute: '/login',
    );
  }
}
