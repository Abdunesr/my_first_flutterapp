import 'package:flutter/material.dart';
import 'package:first_app/GradientContainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey,
          title: const Center(
            child: Text("Dice Rolling App",style:TextStyle(color: Colors.white),),
          ),
        ),

    body: const GradientContainer(Colors.deepPurple,const Color.fromARGB(255, 72, 194, 255)),
      ),
    ),
  );
}

