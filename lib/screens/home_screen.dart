import 'package:flutter/material.dart';
import 'package:unit_6_assignment_simpas/screens/about_me.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Gesture and Navigation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            const Text("This is supposed to be a Home Screen"),
            const SizedBox(height: 20),
            Center(
              // Center the button
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const About_Me()),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // Text color
                  backgroundColor: Colors.lightBlue, // Background color
                ),
                child: const Text("Go to About Me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
