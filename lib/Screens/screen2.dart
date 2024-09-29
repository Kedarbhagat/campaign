import 'package:camoa/components/container.dart'; // Assuming Containercustom is defined here
import 'package:flutter/material.dart';

class Imagesgenerated extends StatefulWidget {
  const Imagesgenerated({super.key});

  @override
  State<Imagesgenerated> createState() => _ImagesgeneratedState();
}

class _ImagesgeneratedState extends State<Imagesgenerated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/Noise & Texture.jpg",
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            children: [
              Text("These are some of The images that might suit your idea "),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Containercustom(),
                    Containercustom(),
                    Containercustom()
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Containercustom(),
                    Containercustom(),
                    Containercustom()
                  ]),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
