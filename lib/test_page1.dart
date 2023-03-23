import 'package:flutter/material.dart';

class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test Home'),
        ),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () => {
              Navigator.of(context).pushNamed('/test2')
            },
            child: const Text(
              'go to test2',
              style: TextStyle(fontSize: 60),
            ),
          ),
          TextButton(
            onPressed: () => {
              Navigator.of(context).pushNamed('/test3')
            },
            child: const Text(
              'go to test3',
              style: TextStyle(fontSize: 60),
            ),
          ),
        ],),)
    );
  }
}