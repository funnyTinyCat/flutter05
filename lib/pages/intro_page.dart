import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // logo
        Padding(
          padding: const EdgeInsets.only(
            left: 90.0,
            right: 90,
            top: 150,
            bottom: 40,
          ),
          child: Image.asset('lib/images/nike.png'),
        ),
        // we deliver groceries at your doorstep
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            "We deliver groseries at your doorstep.",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        // fresh items everyday
        const Text(
          "Fresh items everyday.",
          style: TextStyle(color: Colors.grey),
        ),
        // get started button
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              //
              return HomePage();
            }),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(24),
            child: Text(
              "Get started",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    ));
  }
}
