import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> myList = [
    'List item 1',
    'List item 2',
    'List item 3',
    'List item 4',
    'List item 5',
    'List item 6',
    'List item 7',
    'List item 8',
    'List item 9',
    'List item 10',
    'List item 11',
    'List item 12'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('list item from array'),
        ),
        backgroundColor: Colors.amber,
        body: Column(
          children: myList
              .map((listItem) => Card(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Text(listItem),
                        )
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
