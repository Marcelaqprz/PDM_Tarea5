import 'package:app_examen1/main.dart';
import 'package:flutter/material.dart';
import 'Dart:math';

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int finalNum = 0;

  int numRandom() {
    Random num = new Random();
    finalNum = num.nextInt(999);
    return finalNum;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.white]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Página 2'),
        ),
        body: ListView(
          children: [
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Generar número aleatorio',
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numRandom().toString(),
                  style: TextStyle(
                      color: Colors.red, fontSize: 45, fontFamily: 'MyFont'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      numRandom();
                    });
                  },
                  child: Text(
                    'Generar',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, finalNum.toString());
                  },
                  child: Text(
                    'Guardar',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
