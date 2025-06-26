import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Controller/Controller.dart';
import 'package:flutter_tutorials/Inherited_widgets/View/Pages/Colorchanger.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var app_controller=controller.of(context);
    return  Scaffold(
      appBar: AppBar(centerTitle: true,title: const Text("Home Page"),backgroundColor:app_controller.appState.color,),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(app_controller.appState.counter.toString(),style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 20,),
        SizedBox(height: 50,width: 200,child: ElevatedButton.icon(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Colorchanger(),));
        }, label: const Text("Change theme"),icon: const Icon(Icons.color_lens),)),
      ],
    ),
    ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        app_controller.incrementCounter();
      },child: const Icon(Icons.add),),
    );
  }
}
