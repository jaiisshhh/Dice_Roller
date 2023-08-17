import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment =
    Alignment.topLeft; //variables with var keyword can be reasignned
const endAlignment = Alignment
    .bottomRight; //if you are never going to change the var then use 'const'

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
