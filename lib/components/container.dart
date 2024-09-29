import 'package:flutter/material.dart';

class Containercustom extends StatelessWidget {
  const Containercustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 290,
        width: 255,
        color: Colors.grey,
      ),
    );
  }
}
