import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _answr = "0";
  String _currentOutPut = '0';
  double num1 = 0;
  double num2 = 0;

  final List<String> buttons = [
    'C',
    'DEL',
    '&',
    '/',

    '9',
    '8',
    '7',
    'X',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: Center(child: Text("calculator")),
      ),
      backgroundColor: Colors.blueGrey[100],
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            child: Center(
              child: Text("results screen here"),
            ),
          )),
          Expanded(
              flex: 2,
              child: Container(
                  child: GridView.builder(
                      itemCount: buttons.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return MyButton(
                            buttonText: buttons[index],
                            color: Colors.green,
                            textColor: Colors.white,
                          );
                          //do something

                        }
                          else if (index == 1) {
                          return MyButton(
                            buttonText: buttons[index],
                            color: Colors.red,
                            textColor: Colors.white,
                          );
                        }
                        return MyButton(
                            buttonText: buttons[index],
                            color: isOperator(buttons[index])
                                ? Colors.deepPurple
                                : Colors.deepPurple[50],
                            textColor: isOperator(buttons[index])
                                ? Colors.white
                                : Colors.deepPurple);
                      })))
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' ||
        x == '&' ||
        x == '/' ||
        x == 'X' ||
        x == '-' ||
        x == '+' ||
        x == '=') {
      return true;
    }
    return false;
  }
  
}
