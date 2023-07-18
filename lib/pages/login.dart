import 'package:flutter/material.dart';
class Loginp extends StatefulWidget {
  const Loginp({super.key});

  @override
  State<Loginp> createState() => _LoginpState();
}

class _LoginpState extends State<Loginp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Calender",
            style: TextStyle(
              fontSize: 20.0,

            ),
          ),
        ),
      ),
    );
  }
}
