import 'package:flutter/material.dart';
import 'package:quotes_app_daliy_task/screens/rendom/rendom.dart';
void main()
{
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homePage(),
      },
    );
  }
}
