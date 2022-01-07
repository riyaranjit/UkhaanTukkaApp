import 'package:flutter/material.dart';
// import 'package:ukhaan_tukka/screens/homepage.dart';
import 'package:ukhaan_tukka/screens/homepage1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        title: "Ukhaan Tukka",
        home:  HomePage1());
  }
}
