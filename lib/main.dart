import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: <Widget>[
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: 'C',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '+/-',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '%',
                  onTap: () {  }
              ),
              CalculatorButton.Icon(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: 'Backspace',
                  icon: Icons.backspace,
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '7',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '8',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '9',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '/',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '4',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '5',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '6',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: 'X',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '1',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '2',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '3',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '-',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '0',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '.',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '=',
                  onTap: () {  }
              ),
              CalculatorButton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '+',
                  onTap: () {  }
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget{
  final Function() onTap;
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  IconData? icon;

  CalculatorButton({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.onTap
  });

  CalculatorButton.Icon({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: backgroundColor,
        child: Center(
          child: icon == null
              ? Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: foregroundColor),
          )
              : Icon(
            icon,
            color: foregroundColor,
          ),
        ),
      ),
    );
  }
}