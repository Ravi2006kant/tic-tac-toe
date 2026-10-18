import 'package:app/util/floatingbutton.dart';
import 'package:app/util/todotile.dart';
import 'package:flutter/material.dart';

class Front extends StatefulWidget {
  const Front({super.key});

  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  @override
  Widget build(BuildContext context) {
List todoList = [
  ["gym",false],
  ["diet",true],
];
void checkboxchanged(bool? value , int index){
setState(() {

});
}
    return Scaffold(backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(backgroundColor: Colors.yellow,title: Text("TO DO",
        style: TextStyle(fontWeight: .bold),),centerTitle: true,),
      body:ListView.builder(itemCount: todoList.length,itemBuilder: (context,index){
        return Todotile(taskName: todoList[index][0],taskcompleted: todoList[index][1],
          onChanged:(value)=>checkboxchanged(value,index) ,);
      }),

      // ListView(children:[
      //   Todotile(taskName: "gym",taskcompleted: false,onChanged:(p){} ,),]),
      floatingActionButton:Floatingbutton(),
    );
  }
}
