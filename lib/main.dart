import 'package:flutter/material.dart';
import 'Pages/title.dart';

void main() => runApp(Univ());

class Univ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScaffold(),
    );
  }
}