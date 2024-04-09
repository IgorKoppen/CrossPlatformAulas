import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/gender_select.dart';
import 'package:flutter/material.dart';


class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
  
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  var isSelectedGenderMale = false;
  var isSelectedGenderFemale = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
          title: const Text('Calculadora IMC'),
          centerTitle: true,
        ),
        body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(child: CustomCard(
                isSelected: isSelectedGenderMale,
                child:  const GenderSelect(
                  icon: Icons.male,
                  text: "Masculino",
                ),
                fn: () {
                setState(() {
                 
                  isSelectedGenderMale = !isSelectedGenderMale;
                  isSelectedGenderFemale = false;
                });
                },
              )),
              Expanded(child: CustomCard(
                 fn: () {
                  setState(() {
                   isSelectedGenderFemale = !isSelectedGenderFemale;
                    isSelectedGenderMale = false;
                });
                },
                isSelected: isSelectedGenderFemale,
                child: GenderSelect(
                  icon: Icons.female,
                  text: "Feminino",
                ),
               
              )),
            ]),
          ),
          Expanded(
            child: CustomCard(),
          ),
          Expanded( child: Row(children: [
              Expanded(child: CustomCard()),
               Expanded(child: CustomCard()),
            ]),
          ),
        ]),
    );
  }
}