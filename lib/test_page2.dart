import 'package:flutter/material.dart';

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test2'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () => {
              Navigator.of(context).pop()
            },
            child: const Text(
              'back',
              style: TextStyle(fontSize: 60),
            ),
          ),
        )
    );
  }
}
