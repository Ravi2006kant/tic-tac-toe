import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:core';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();

}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Habit Tracker",style: TextStyle(color:Colors.white,fontWeight: .bold),),);
  }
}
