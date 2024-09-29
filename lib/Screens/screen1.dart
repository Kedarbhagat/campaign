import 'package:camoa/Screens/screen2.dart';
import 'package:flutter/material.dart';

TextEditingController searchbarController = TextEditingController();

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Noise & Texture.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 140,
              ),
              Center(
                  child: Text(
                "The Gen-AI Based Solution For Your",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
              Text(
                "Campaigning Needs",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Container(
                width: 600,
                decoration: BoxDecoration(
                  color: Colors.white
                      .withOpacity(0.5), // Background color of the text field
                  borderRadius: BorderRadius.circular(20),
                  // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: TextField(
                    controller: searchbarController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Imagesgenerated(),
                              ));
                            },
                            child: Icon(Icons.search))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
