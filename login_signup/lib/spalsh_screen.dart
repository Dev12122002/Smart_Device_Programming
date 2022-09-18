import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class SpalshScreen extends StatelessWidget {
  SpalshScreen({Key? key}) : super(key: key);
  double value = 0;

  @override
  initState() {

    // print("initState Called");
    Timer.periodic(
        const Duration(seconds: 1),
            (Timer timer){
          // setState(() {
            if(value == 1) {
              timer.cancel();
            }
            else {
              value = value + 0.1;
            }
          // });
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          child:  CircularProgressIndicator(
            backgroundColor: Colors.indigo,
            // backgroundColor: Colors.purple,
            color: Colors.purple,
            strokeWidth: 5,
            value: value,
          ),
        ),
      ),
    );
  }
}