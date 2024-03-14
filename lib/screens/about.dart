import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(border: Border.all()),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            widthFactor: 0.8,
            heightFactor: 0.2,
            child: ElevatedButton(
              child: const Text(
                "Tap",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                print('Button clicked!');
              },
            ),
          ),
        ),
      ),
    );
  }
}
