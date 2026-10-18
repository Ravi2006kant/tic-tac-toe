import 'package:flutter/material.dart';

class Floatingbutton extends StatelessWidget {
 const Floatingbutton({super.key,});

  @override
  Widget build(BuildContext context) {
    final taskcontroller = TextEditingController();
    return FloatingActionButton(backgroundColor: Colors.yellow,
      elevation: 0,onPressed: (){
      showDialog(context: context, builder: (builder) {

        return  AlertDialog(actions: [Container(height: 200,width: 250,
          child: Column(children: [TextField(controller: taskcontroller,decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)),focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25)))),
            Row(children: [   MaterialButton(color: Colors.red,onPressed: (){
              Navigator.pop(context);

            }),
              MaterialButton(color: Colors.yellow,onPressed: (){})],),


          ],),)],);
      });

      },child: Icon(Icons.add),);
  }
}
