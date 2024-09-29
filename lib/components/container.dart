import 'package:flutter/material.dart';

class Containercustom extends StatelessWidget {
  final double? height; // Height of the container, can be null
  final double? width; // Width of the container, can be null

  Containercustom({
    super.key,
    this.height, // Constructor for height
    this.width,  // Constructor for width
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ?? 200, // Use provided height or default to 200
        width: width ?? 240, // Use provided width or default to 240
        color: const Color.fromARGB(86, 158, 158, 158),
      ),
    );
  }
}
