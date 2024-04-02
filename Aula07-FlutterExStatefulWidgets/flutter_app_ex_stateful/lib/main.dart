import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double iconSize = 300;
  double iconMaxSize = 500;
  double iconMinSize = 50;
  double redSlideValue = 0;
  double greenSlideValue = 0;
  double blueSlideValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  if (iconSize > iconMinSize) {
                    iconSize -= 50;
                  }
                });
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  iconSize = 50;
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  iconSize = 300;
                });
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  iconSize = 500;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  if (iconSize < iconMaxSize) {
                    iconSize += 50;
                  }
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: iconSize,
                  color: Color.fromARGB(255, redSlideValue.round(),
                      greenSlideValue.round(), blueSlideValue.round()),
                ),
              ),
            ),
            ColorSlider(
              color: Colors.red,
              slideValue: redSlideValue,
              fn: (valor) => {
                setState(() {
                  redSlideValue = valor;
                })
              },
            ),
            ColorSlider(
              color: Colors.green,
              slideValue: greenSlideValue,
              fn: (valor) => {
                setState(() {
                  greenSlideValue = valor;
                })
              },
            ),
            ColorSlider(
              color: Colors.blue,
              slideValue: blueSlideValue,
              fn: (valor) => {
                setState(() {
                  blueSlideValue = valor;
                })
              },
            ),
          ],
        ));
  }
}

class ColorSlider extends StatelessWidget {
  final Color color;
  final void Function(double valor) fn;
  final double slideValue;

  const ColorSlider(
      {super.key,
      required this.color,
      required this.fn,
      required this.slideValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Slider(
              activeColor: color,
              value: slideValue,
              min: 0,
              max: 255,
              onChanged: (value) {
                fn(value);
              },
            ),
          ),
          Text(
            slideValue.round().toString(),
            style: TextStyle(
                color: color, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
