import 'package:flutter/material.dart';
class AppState
{
  final int counter;
  final Color color;

  AppState({this.counter=0,this.color=Colors.blue});

 AppState CopyWith({int? counter,Color? color})
 {
   return AppState(
     counter: counter ?? this.counter,
     color: color ?? this.color
   );
 }

    @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          counter == other.counter &&
          color == other.color;

  @override
  int get hashCode => counter.hashCode ^ color.hashCode;
}
