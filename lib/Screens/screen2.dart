import 'package:camoa/Screens/screen1.dart';
import 'package:camoa/components/container.dart'; // Assuming Containercustom is defined here
import 'package:camoa/components/txtbutton.dart';
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/Noise & Texture.jpg",
              fit: BoxFit.cover, // Ensures the image covers the entire screen
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Centers the row content
                    children: [
                      const Expanded(
                        child: Text(
                          "These are some of the images that might suit your idea",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Textbutton(
                        Inputtext: "Proceed",
                        onTap: () {},
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Containercustom(),
                        SizedBox(width: 16), // Spacing between containers
                        Containercustom(),
                        SizedBox(width: 16),
                        Containercustom(),
                      ],
                    ),
                    const SizedBox(height: 16), // Spacing between rows
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Containercustom(),
                        SizedBox(width: 16),
                        Containercustom(),
                        SizedBox(width: 16),
                        Containercustom(),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 600,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(89, 255, 255, 255),
                    // Background color of the text field
                    borderRadius: BorderRadius.circular(20),

                    // Rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: TextField(
                      controller: searchbarController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.generating_tokens,
                            color: Colors.white,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
