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
            return Column(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 6 / 19,
                        child: Container(
                          width: 2000,
                          color: Colors.deepPurple[300],
                          child: const Text("D E S K T O P"),
                        ),
                      ),
                    ),
                ),
              ],
            );
          }
        },);
  }
}
