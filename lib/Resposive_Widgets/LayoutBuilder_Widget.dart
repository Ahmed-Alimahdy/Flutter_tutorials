import 'package:flutter/material.dart';
class LayoutBuilder_widget extends StatelessWidget {
  const LayoutBuilder_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return
        LayoutBuilder(builder: (context, constraints){
          if(constraints.maxWidth < 500) {
            return const Text("M O B I L E");
          } else {
            return const Text("D E S K T O P");
          }
        },);
  }
}
