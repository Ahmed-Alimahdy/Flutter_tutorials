import 'package:flutter/material.dart';

class App_state
{
 final int counter;
 final MaterialColor color;
 App_state({this.counter = 0,this.color = Colors.blue});

App_state Copy_with({int? counter,MaterialColor? color})
{
  App_state new_object= App_state(
    color: color ?? this.color,
    counter: counter ?? this.counter
  );
  return  new_object;
}

 @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is App_state &&
          runtimeType == other.runtimeType &&
          counter == other.counter &&
          color == other.color;

  @override
  int get hashCode => counter.hashCode ^ color.hashCode;
}
