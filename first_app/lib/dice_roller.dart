import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

final randomizer = Random();

class DiceRoler extends StatefulWidget {
  const DiceRoler({super.key});
  @override
  State<DiceRoler> createState() {
    return _DiceRolerState();
  }
}

class _DiceRolerState extends State<DiceRoler> {
  var tempDice = 'assets/images/dice-1.png';
  var currentDice = 2;
  var holder='ab';

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
      /*  var rand=Random().nextInt(6)+1; */
      tempDice = 'assets/images/dice-$currentDice.png';
      holder='$currentDice';
      
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, //to make sure that the column not take all the vertical space between
      children: [
        const Text(
          "Play this dice Game",
          style: TextStyle(fontSize: 27, color: Colors.deepOrange),
        ),
        Image.asset(
          tempDice,
          width: 200,
        ),
        /* FilledButton(onPressed: rollDice, child: Text("rollDice")) */
        // ElevatedButton(onPressed: rollDice, child: const Text("roll Dice"))
      const   SizedBox(height:20,child: Text("The result is $ho",),),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
     
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          child: const Text("roll Dice"),
        ),
      ],
    );
  }
}
