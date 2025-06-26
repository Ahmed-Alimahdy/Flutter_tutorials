import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Cupertinowidgets extends StatefulWidget {
  const Cupertinowidgets({super.key});

  @override
  State<Cupertinowidgets> createState() => _CupertinowidgetsState();
}

class _CupertinowidgetsState extends State<Cupertinowidgets> {
  String _val="Choice 1";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoListTile(
              title: const Text("Choice 1",style: TextStyle(fontFamily: 'Oswald'),),
            leading: CupertinoRadio<String>(value: "Choice 1", groupValue: _val, onChanged: (value){
              setState(() {
              _val=value!;
            });}),
          ),
          CupertinoListTile(
            title: const Text("Choice 2",style: TextStyle(fontFamily: 'Oswald')),
            leading: CupertinoRadio<String>(value: "Choice 2", groupValue: _val, onChanged: (value){
              setState(() {
              _val=value!;
            });

            }),
          ),
        ],
      ),
    );
  }
}
