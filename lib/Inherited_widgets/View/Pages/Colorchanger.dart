import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Controller/Controller.dart';
import 'package:flutter_tutorials/Inherited_widgets/View/Widgets/Color_item.dart';
class Colorchanger extends StatelessWidget {
  const Colorchanger({super.key});

  @override
  Widget build(BuildContext context) {
    var app_controller=controller.of(context);
    List<Color> available_colors=[Colors.blue,Colors.green,Colors.yellow,Colors.red,Colors.pink];
    return Scaffold(
    appBar: AppBar(centerTitle: true,title: const Text("Color Changer"),backgroundColor: app_controller.appState.color,),
       body:  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: available_colors.map((e) => ColorItem(color: e)).toList(),
      ),
    ));
  }
}
