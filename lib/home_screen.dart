import 'package:calculator_2/components/container.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  children: [
                    Text(userInput.toString(), style: TextStyle(fontSize: 15)),
                    Text(
                      answer.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container2(
                      titles: '7',
                      onpres: () {
                        userInput += '7';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '8',
                      onpres: () {
                        userInput += '8';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '9',
                      onpres: () {
                        userInput += '9';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '/',
                      onpres: () {
                        userInput += '/';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container2(
                      titles: '4',
                      onpres: () {
                        userInput += '4';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '5',
                      onpres: () {
                        userInput += '5';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '6',
                      onpres: () {
                        userInput += '6';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: 'x',
                      onpres: () {
                        userInput += 'x';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container2(
                      titles: '1',
                      onpres: () {
                        userInput += '1';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '2',
                      onpres: () {
                        userInput += '2';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '3',
                      onpres: () {
                        userInput += '3';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '-',
                      onpres: () {
                        userInput += '-';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container2(
                      titles: 'C',
                      onpres: () {
                        userInput = '';
                        answer = '';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '0',
                      onpres: () {
                        userInput += '0';
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '=',
                      onpres: () {
                        equalPress();
                        setState(() {});
                      },
                    ),
                    Container2(
                      titles: '+',
                      onpres: () {
                        userInput += '+';
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  void equalPress() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
