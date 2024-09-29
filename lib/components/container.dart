import 'package:flutter/material.dart';

class Containercustom extends StatelessWidget {
  final String imageUrl; // URL of the image to be displayed

  const Containercustom({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 240,
        decoration: BoxDecoration(
          color: const Color.fromARGB(86, 158, 158, 158), // Background color while loading
          borderRadius: BorderRadius.circular(10), // Rounded corners for the container
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10), // Ensures the image fits the rounded container
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover, // Ensures the image covers the container
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child; // Image is loaded, display the image
              } else {
                // Show circular progress indicator while the image is loading
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                );
              }
            },
            errorBuilder: (context, error, stackTrace) {
              // Display an error icon if the image fails to load
              return const Center(
                child: Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 50,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
