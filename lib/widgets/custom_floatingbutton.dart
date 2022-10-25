import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: const Icon(Icons.home_outlined),
      onPressed: () {
        Navigator.pushReplacementNamed(context, 'resumen');
      }
    );
  }
}