import 'package:flutter/material.dart';

void main() {
  runApp(const FunnyNumber());
}

class FunnyNumber extends StatelessWidget {
  const FunnyNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}
