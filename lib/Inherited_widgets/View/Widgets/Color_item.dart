import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Controller/Controller.dart';
class ColorItem extends StatelessWidget {
  final Color color;
  const ColorItem({super.key,required this.color});

  @override
  Widget build(BuildContext context) {
    var state=controller.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 32),
      child: InkWell(
        onTap: (){
          state.ChangeColor(color);
          Navigator.pop(context);
        },
        child: SizedBox(
          height: 70,
          width: double.infinity,
          child: DecoratedBox(decoration: BoxDecoration(color: color)),
        ),
      ),
    );
  }
}
