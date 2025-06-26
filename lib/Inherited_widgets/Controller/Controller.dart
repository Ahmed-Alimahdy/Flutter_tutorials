import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Model/AppState.dart';
class State_modifier extends StatefulWidget {
  final Widget child;
  const State_modifier({super.key,required this.child});

  @override
  State<State_modifier> createState() => _State_modifierState();
}

class _State_modifierState extends State<State_modifier> {
  AppState appState=AppState();
  void incrementCounter()
  {
    int new_counter=appState.counter + 1;
    AppState new_state=appState.CopyWith(counter: new_counter);
    setState(() {
      appState=new_state;
    });
  }
  void ChangeColor(Color color)
  {
    setState(() {
      appState=appState.CopyWith(color: color);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  controller(state: this,appState:appState, child: widget.child,);
  }
}

class controller extends InheritedWidget
{
  final _State_modifierState state;
  final AppState appState;
  const controller({super.key, required super.child,required this.state,required this.appState});
   static of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<controller>()!.state;
  @override
  bool updateShouldNotify(covariant controller oldWidget) {
    return oldWidget.appState!= appState;
  }

}
