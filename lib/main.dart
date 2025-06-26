import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Controller/Controller.dart';
import 'package:flutter_tutorials/Inherited_widgets/View/Pages/Homepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const State_modifier(
      child: MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Homepage(),
                   ),
    );
  }
}

