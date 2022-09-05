import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _imageVazia = AssetImage('imagens/vazia.jpg');

  var _imagemRobo = AssetImage('');

  String _resultado = '';

  void _escolha(String escolhajogador) {
    var escolha = ['pedra', 'papel', 'tesoura'];

    var num = Random().nextInt(3);

    var escolhaboot = escolha[num];

    setState(() {
      if (escolhaboot == 'pedra') {
        _imageVazia = AssetImage('imagens/pedra.jpg');
      } else if (escolhaboot == 'papel') {
        _imageVazia = AssetImage('imagens/papel.jpg');
      } else {
        _imageVazia = AssetImage('imagens/tesoura.jpg');
      }
    });

    setState(() {
      if ((escolhajogador == 'pedra' && escolhaboot == 'tesoura') ||
          (escolhajogador == 'tesoura' && escolhaboot == 'papel') ||
          (escolhajogador == 'papel' && escolhaboot == 'pedra')) {
        _resultado == 'Você ganhou !!';
        _imagemRobo = AssetImage('imagens/robochorando.jpg');
      }else if (false) {
          
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}
