import'package:flutter/material.dart';
import 'CupertinoWidgets.dart';
    class Sw_homepage extends StatefulWidget {
      const Sw_homepage({super.key});

  @override
  State<Sw_homepage> createState() => _Sw_homepageState();
}

class _Sw_homepageState extends State<Sw_homepage> {
      @override
      Widget build(BuildContext context) {
        return const Scaffold(
          body: Cupertinowidgets(),
        );
      }
}
