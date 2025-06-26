import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Controllers/State_widget.dart';
import 'package:flutter_tutorials/Inherited_widgets/Views/Pages/Homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   state_modifier(
         child: Builder(
           builder: (context) {
             var state=widget_state.of(context);
             return MaterialApp(
               theme: ThemeData(primarySwatch: state.app_state.color),
              debugShowCheckedModeBanner: false,
              home: const Homepage(),
                 );
           }
         ),
       );
  }
}

