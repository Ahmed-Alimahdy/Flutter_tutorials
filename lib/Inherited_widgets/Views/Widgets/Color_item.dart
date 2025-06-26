import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Controllers/State_widget.dart';
class Color_item extends StatelessWidget {
  final MaterialColor color;
  const Color_item({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    var state=widget_state.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          state.change_color(color);
          Navigator.of(context).pop();
        },
        child: SizedBox(
          height: 70,
          width: double.infinity,
          child: DecoratedBox(decoration: BoxDecoration(
            color: color
          )),
        ),
      ),
    );
  }
}
