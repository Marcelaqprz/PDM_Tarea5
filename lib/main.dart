import 'package:flutter/material.dart';
import 'package:app_examen1/Page3.dart';
import 'package:app_examen1/Page2.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var textOut3 = '', textOut2 = '', wData = TextEditingController();
  String finalTxtOut3 = '', finalTxtOut2 = '', wdResult = '', tempData = '';
  String wordResult() {
    wdResult = tempData + finalTxtOut2;
    return wdResult;
  }

  void data() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Ingresa los datos: '),
        content: TextField(
          controller: wData,
          decoration: InputDecoration(labelText: 'Ingresa una palabra'),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              wData.text = '';
            },
            child: Text('Cancelar'),
          ),
          ElevatedButton(
              onPressed: () async {
                textOut2 = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                  ),
                );
                setState(() {
                  finalTxtOut2 = textOut2;
                });
                Navigator.of(context).pop();
                tempData = wData.text;
                wData.text = '';
              },
              child: Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea 1'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BIENVENIDOS',
                  style: TextStyle(
                      fontFamily: 'MyFont', color: Colors.grey, fontSize: 35)),
            ],
          ),
          Image(
            image: AssetImage('assets/DartSide.png'),
          ),
          Container(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Seleccione la acción a realizar: ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      data();
                    },
                    child: const Text(
                      'Página 2',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Container(width: 85, height: 150),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      textOut3 = await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Page3(),
                        ),
                      );
                      setState(
                        () {
                          finalTxtOut3 = textOut3;
                        },
                      );
                    },
                    child: const Text(
                      'Página 3',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pág.2 => ' + wordResult()),
            ],
          ),
          Container(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pág.3 => ' + finalTxtOut3),
            ],
          ),
        ],
      ),
    );
  }
}
