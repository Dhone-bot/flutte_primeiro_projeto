import 'package:flutter/material.dart';

class TelaJogo extends StatefulWidget {
  const TelaJogo(
    this.nomeHeroi,
    this.urlImagem,
    this.vida,
    this.moedas,
    this.poder, {
    super.key,
  });

  final String nomeHeroi;
  final String urlImagem;
  final int moedas;
  final int poder;
  final int vida;

  @override
  State<TelaJogo> createState() => TelaJogoState();
}

class TelaJogoState extends State<TelaJogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://static.wikia.nocookie.net/hollowknight/images/8/88/Screenshot_HK_Royal_Waterways_10.png/revision/latest/scale-to-width-down/250?cb=20241212180218&path-prefix=pt',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 40,
            child: Card(
              elevation: 5, // Dá uma sombra 3D ao cartão
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Classe:  $widget.nomeHeroi',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(), // Linha divisória
                    Text(
                      '❤️ Vida: $widget.vida',
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    Text(
                      '💰 Moedas: $widget.moedas',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.orange,
                      ),
                    ),
                    Text(
                      '⚔️ Poder: $widget.poder',
                      style: const TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
