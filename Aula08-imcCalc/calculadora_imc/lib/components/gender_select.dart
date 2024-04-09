import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class GenderSelect extends StatelessWidget {
  final IconData icon;
  final String text;
  const GenderSelect({super.key,required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon,size: 100,),
                      const SizedBox(height: 15.0,),
                      Text(text,style:labelTextStyle,)
                    ]);
  }
}