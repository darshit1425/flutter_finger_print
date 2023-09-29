import 'package:flutter/material.dart';

class Sec extends StatefulWidget {
  const Sec({super.key});

  @override
  State<Sec> createState() => _SecState();
}

class _SecState extends State<Sec> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("2 scrren")),
    ));
  }
}
