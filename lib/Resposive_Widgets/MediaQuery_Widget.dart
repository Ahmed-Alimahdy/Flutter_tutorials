import 'package:flutter/material.dart';
class Mediaquery_Widget extends StatelessWidget {
  const Mediaquery_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final current_width=MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: current_width > 600 ?Colors.grey[300]:Colors.amber[300],
          body: Center(
            child: Text(current_width.toString()),
          ),
        )
    );
  }
}
