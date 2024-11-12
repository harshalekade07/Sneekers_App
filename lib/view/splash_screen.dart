import 'dart:async';

import 'package:flutter/material.dart';

import 'onboard1.dart';

class Nike extends StatefulWidget {
  const Nike({super.key});

  @override
  State<Nike> createState() => _NikeState();
}

class _NikeState extends State<Nike> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return MyWidget();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
      body: Center(
        child: Image.asset("assets/images/Screenshot 2024-11-10 115655.png"),
      ),
    );
  }
}
