import 'package:flutter/material.dart';
import 'package:flutter_tutorials/Inherited_widgets/Controllers/State_widget.dart';
import 'package:flutter_tutorials/Inherited_widgets/Views/Pages/Color_changer.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var state=widget_state.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App"),centerTitle: true,backgroundColor: state.app_state.color,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(state.app_state.counter.toString(),style: const TextStyle(fontSize: 20,),),
            const SizedBox(height: 10,),
            ElevatedButton.icon(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Color_changer(),));
            }, label:const Text("Change primary swatch"),icon: const Icon(Icons.color_lens),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){state.increment_counter();},child: const Icon(Icons.add),),
    );
  }
}
