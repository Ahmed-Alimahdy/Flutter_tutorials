import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Controllers/State_widget.dart';
import 'package:flutter_tutorials/Inherited_widgets/Views/Widgets/Color_item.dart';
class Color_changer extends StatelessWidget {
  const Color_changer({super.key});
  @override
  Widget build(BuildContext context) {
    var state=widget_state.of(context);
    List<MaterialColor> colorPallete=[Colors.blue,Colors.green,Colors.yellow,Colors.red];
    return Scaffold(
      appBar: AppBar(title: const Text("Change Color"),centerTitle: true,backgroundColor: state.app_state.color,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: colorPallete.map((e){ return Color_item(color: e);}).toList(),
        ),
      )
    );
  }
}
