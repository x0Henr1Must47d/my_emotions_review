import 'package:flutter/material.dart';
import 'package:my_emotions_review/views/whathappened.view.dart';

class PositiveFeelings extends StatefulWidget {
  final String currentFeeling;

  PositiveFeelings(this.currentFeeling);

  @override
  _PositiveFeelingsState createState() => _PositiveFeelingsState();
}

class _PositiveFeelingsState extends State<PositiveFeelings> {
  bool felicidade = false;
  bool humor = false;
  bool alegria = false;
  bool amor = false;
  bool gratidao = false;
  bool esperanca = false;
  var yourfeelings = List<String>();

  validation() {
    if (felicidade) yourfeelings.add("felicidade");
    if (humor) yourfeelings.add("humor");
    if (alegria) yourfeelings.add("alegria");
    if (amor) yourfeelings.add("amor");
    if (gratidao) yourfeelings.add("gratidão");
    if (esperanca) yourfeelings.add("esperança");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Emotions Review'),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              "Um sentimento positivo!\nA Clotilde fica feliz!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            CheckboxListTile(
              title: const Text('Felicidade'),
              value: felicidade,
              activeColor: Colors.lightGreen,
              onChanged: (bool valor) {
                setState(() {
                  felicidade = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Humor'),
              value: humor,
              activeColor: Colors.lightGreen,
              onChanged: (valor) {
                setState(() {
                  humor = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Alegria'),
              value: alegria,
              activeColor: Colors.lightGreen,
              onChanged: (valor) {
                setState(() {
                  alegria = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Amor'),
              value: amor,
              activeColor: Colors.lightGreen,
              onChanged: (valor) {
                setState(() {
                  amor = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Gratidão'),
              value: gratidao,
              activeColor: Colors.lightGreen,
              onChanged: (valor) {
                setState(() {
                  gratidao = valor;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Esperança'),
              value: esperanca,
              activeColor: Colors.lightGreen,
              onChanged: (valor) {
                setState(() {
                  esperanca = valor;
                });
              },
            ),
            RaisedButton(
              child: Text('Estou me sentido assim',
                  style: TextStyle(fontSize: 24)),
              color: Colors.orange[800],
              textColor: Colors.white,
              onPressed: () {
                validation();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) =>
                          WhatHappened(yourfeelings, widget.currentFeeling)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
