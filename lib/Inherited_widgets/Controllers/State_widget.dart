import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Models/App_state.dart';
class state_modifier extends StatefulWidget {
  final Widget child;
  const state_modifier({super.key,required this.child});

  @override
  State<state_modifier> createState() => _state_modifierState();
}

class _state_modifierState extends State<state_modifier> {
  App_state app_state = App_state();
  void increment_counter()
  {
    int counter = app_state.counter + 1;
    App_state newState= app_state.Copy_with(counter: counter);
    setState(() {
      app_state=newState;
    });
  }
  void change_color(MaterialColor color)
  {
    App_state newstate =app_state.Copy_with(color: color);
    setState(() {
      app_state=newstate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget_state(appstate: app_state, state: this,child: widget.child,);
  }
}

class widget_state extends InheritedWidget{
  final App_state appstate;
  final _state_modifierState state;
  const widget_state({super.key, required super.child,required this.appstate,required this.state});

  static of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<widget_state>()!.state;
  @override
  bool updateShouldNotify(covariant widget_state oldWidget) {
    return oldWidget.appstate!=appstate;
  }

}