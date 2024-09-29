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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 140),
                Center(
                    child: Text(
                      "The Gen-AI Based Solution For Your",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )),
                Text(
                  "Campaigning Needs",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 720,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2), // Background color of the text field
                    borderRadius: BorderRadius.circular(20),
                    // Rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: searchbarController,
                      cursorColor: Colors.white,
                      style: TextStyle(color:Colors.white),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 20,
                        ),
                        hintText: '   Enter Your Idea ..',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: Text(
                    "User Generated Ideas and Campaigns",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                SizedBox(height: 20),
                // The GridView with disabled scrolling behavior
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Padding(

                    padding: const EdgeInsets.only(left: 30 ,right: 30),
                    child: GridView.count(
                      crossAxisCount: 4, // 4 items per row
                      shrinkWrap: true, // Let GridView fit the available space
                      physics: NeverScrollableScrollPhysics(), // Disable GridView scrolling
                      crossAxisSpacing: 40,
                      mainAxisSpacing: 30,
                      children: List.generate(8, (index) {
                        return Container(
                          height: 100, // Set a specific height for each item to avoid overflow
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some space below the grid
              ],
            ),
          ),
        ),
      ),
    );
  }
}
