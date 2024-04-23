import '../calculadora.dart';
import '../components/bottom_button.dart';
import '../components/contador.dart';
import '../components/custom_card.dart';
import '../components/gender_select.dart';
import '../components/modal_result.dart';
import '../components/slider_altura.dart';
import 'package:flutter/material.dart';

enum Genero { masculino, feminino }

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  var selectedGender;
  double alturaSlider = 120;
  int idade = 40;
  int peso = 40;
  final int pesoMinimo = 20;
  final int pesoMaximo = 200;
  final int idadeMinima = 10;
  final int idadeMaxima = 100;
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
                    text: "Masculino",
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
                    text: "Feminino",
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
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      child: Contador(
                        label: 'Peso',
                        value: peso,
                        onIncrement: () {
                          if (peso < pesoMaximo) {
                            setState(() {
                              peso++;
                            });
                          }
                        },
                        onDecrement: () {
                          if (peso > pesoMinimo) {
                            setState(() {
                              peso--;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      child: Contador(
                        label: 'Idade',
                        value: idade,
                        onIncrement: () {
                          if (idade < idadeMaxima) {
                            setState(() {
                              idade++;
                            });
                          }
                        },
                        onDecrement: () {
                          if (idade > idadeMinima) {
                            setState(() {
                              idade--;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                buttonTitle: 'Calcular IMC',
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        final imc = Calculadora.calcularIMC(
                            peso: peso, altura: alturaSlider.toInt());
                        final resultado = Calculadora.obterResultado(imc);
                        return ModalResult(
                          imc: imc,
                          resultado: resultado,
                        );
                      });
                })
          ]),
    );
  }
}
