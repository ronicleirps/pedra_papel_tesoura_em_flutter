import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _imageVazia = const AssetImage('imagens/padrao.png');

  var _imagemRobo = const AssetImage('');

  String _resultado = '';

  void _escolha(String escolhajogador) {
    var escolha = ['pedra', 'papel', 'tesoura'];

    var num = Random().nextInt(3);

    var escolhaboot = escolha[num];

    setState(() {
      if (escolhaboot == 'pedra') {
        _imageVazia = const AssetImage('imagens/pedra.png');
      } else if (escolhaboot == 'papel') {
        _imageVazia = const AssetImage('imagens/papel.png');
      } else {
        _imageVazia = const AssetImage('imagens/tesoura.png');
      }
    });

    setState(() {
      if ((escolhajogador == 'pedra' && escolhaboot == 'tesoura') ||
          (escolhajogador == 'tesoura' && escolhaboot == 'papel') ||
          (escolhajogador == 'papel' && escolhaboot == 'pedra')) {
        _resultado == 'Você ganhou !!';
        _imagemRobo = const AssetImage('imagens/triste.jpg');
      } else if ((escolhajogador == 'tesoura' && escolhaboot == 'pedra') ||
          (escolhajogador == 'papel' && escolhaboot == 'tesoura') ||
          (escolhajogador == 'pedra' && escolhaboot == 'papel')) {
        _resultado = 'Você perdeu';
        _imagemRobo = const AssetImage('imagens/feliz.png');
      } else {
        _resultado = 'Empatamos';
        _imagemRobo = const AssetImage('imagens/feliz.png');
      }

      _mostrarSnacBar();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Jogo de pedra, papel e tesoura',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 32,
          ),
          const Text('Escolha da máquina',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 12,
          ),
          const Image(
            image: AssetImage('imagens/robopadrao.jpg'),
            height: 250,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Escolha uma opção abaixo',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Image(
                  image: AssetImage('imagens/pedra.png'),
                  height: 110,
                ),
                Image(
                  image: AssetImage('imagens/papel.png'),
                  height: 110,
                ),
                Image(
                  image: AssetImage('imagens/tesoura.png'),
                  height: 110,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _mostrarSnacBar() {}
