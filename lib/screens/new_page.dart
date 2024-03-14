import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Second Route'),
      ),
      child: Center(
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
                child: Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                onPressed: () {
                  _incrementCounter();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
