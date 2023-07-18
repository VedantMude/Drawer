import 'package:flutter/material.dart';
class Homep extends StatefulWidget {
  const Homep({super.key});

  @override
  State<Homep> createState() => _HomepState();
}

class _HomepState extends State<Homep> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home",
            style: TextStyle(
              fontSize: 20.0,

            ),
          ),
        ),
      ),
    );
  }
}
