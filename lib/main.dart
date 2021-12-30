import 'package:flutter/material.dart';
import 'package:flutter_shop_template/pages/login/index.dart';

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
        primarySwatch: Colors.blue,
      ),
      routes: {'/login': (context) => const LoginPage()},
      initialRoute: '/login',
    );
  }
}
