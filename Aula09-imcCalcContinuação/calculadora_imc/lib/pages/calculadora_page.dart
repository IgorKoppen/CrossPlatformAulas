import 'package:calculadora_imc/components/contador.dart';
import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/gender_select.dart';
import 'package:flutter/material.dart';

import '../components/slider_altura.dart';

enum Genero { masculino, feminino }

enum Color { red, green, blue }

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  var selectedGender;
  double alturaSlider = 120;
  int idade1 = 40;
  int idade2 = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(children: [
                Expanded(
                    child: CustomCard(
                  isSelected: selectedGender == Genero.masculino,
                  child: const GenderSelect(
                    icon: Icons.male,
                    text: "Male",
                  ),
                  fn: () {
                    setState(() {
                      selectedGender = Genero.masculino;
                    });
                  },
                )),
                Expanded(
                    child: CustomCard(
                  isSelected: selectedGender == Genero.feminino,
                  child: const GenderSelect(
                    icon: Icons.female,
                    text: "Female",
                  ),
                  fn: () {
                    setState(() {
                      selectedGender = Genero.feminino;
                    });
                  },
                )),
              ]),
            ),
            Expanded(
              child: CustomCard(
                  child: SliderAltura(
                altura: alturaSlider,
                fn: (double valor) {
                  setState(() {
                    alturaSlider = valor;
                  });
                },
              )),
            ),
            Expanded(
              child: Row(children: [
                Expanded(
                    child: CustomCard(
                  child: Contador(
                    text: "Idade",
                    contadorValue: idade1,
                    fn: (int valor) {
                      setState(() {
                        idade1 = valor;
                      });
                    },
                  ),
                )),
                Expanded(
                    child: CustomCard(
                  child: Contador(
                    text: "Idade2",
                    contadorValue: idade2,
                    fn: (int valor) {
                      setState(() {
                        idade2 = valor;
                      });
                    },
                  ),
                )),
              ]),
            ),
          ]),
    );
  }
}
