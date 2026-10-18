import 'package:flutter/material.dart';

class Todotile extends StatelessWidget {
 Todotile({super.key,required this.taskcompleted, required this.onChanged,required this.taskName});
final bool taskcompleted;
final String taskName;
Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.red.shade50,

        borderRadius: BorderRadius.circular(25)),
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: ListTile(leading:Checkbox(activeColor: Colors.black,value:taskcompleted , onChanged: onChanged) ,
        // conButton(color: Colors.white,
        //     onPressed: (){}, icon: Icon(Icons.check_box_outline_blank_rounded)),
        title: Text(taskName,style: TextStyle(decoration: taskcompleted ? .lineThrough : .none),),),);
  }
}
