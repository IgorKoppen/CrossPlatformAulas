import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  final String text;
  final int contadorValue;
  final void Function(int valor)? fn;
  const Contador(
      {super.key, required this.text, required this.contadorValue, this.fn});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: labelTextStyle,
        ),
        Text(
          contadorValue.toString(),
          style: numberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                var value = contadorValue;
                value--;
                fn!(value < 1 ? value = 1 : value);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColour,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                var value = contadorValue;
                value++;
                fn!(value);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColour,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.add),
            )
          ],
        )
      ],
    );
  }
}
