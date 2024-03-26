import 'package:flutter/material.dart';
import 'package:flutter_application_0/screens/cubit_screen.dart';
import './new_page.dart';

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
                "Goto page cubit screen",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormDataPage()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
