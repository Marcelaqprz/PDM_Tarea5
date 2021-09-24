// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool b1Pressed = false, b2Pressed = false, b3Pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 3'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, '(◕‿◕｡)');
                    setState(() {
                      b1Pressed = !b1Pressed;
                    });
                  },
                  child: const Text(
                    '(◕‿◕｡)',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: (b1Pressed) ? Colors.black : Colors.white)),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'ʕᵔᴥᵔʔ');
                },
                child: const Text(
                  'ʕᵔᴥᵔʔ',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, '¯\_(ツ)_/¯');
                },
                child: const Text(
                  '¯\_(ツ)_/¯',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
