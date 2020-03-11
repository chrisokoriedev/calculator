import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List answer = [
    'Yes',
    'No',
    'Fine',
    'Am Good thanks',
    'Hmmmmm cant answer the question',
    'ask someone else',
    'Answer That Yourself',
    'Jamb Question',
    'Ode Ask Me One More Time',
    'Mumu Ask yourself na',
    'Yes',
    'Pass',
    'Ohhh Let not answer that',
    'Ask Google',
    'Maybe',
    'Hmmmmmm, I dont know',
    'okay',
    'Nothing',
    'Am fine',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Ask Me Anything'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        ' The Answer is:',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          answer[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.brown),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      FlatButton(
                          color: Colors.redAccent,
                          onPressed: () {
                            setState(() {
                              index = Random().nextInt(18);
                            });
                          },
                          child: Text('click me')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
