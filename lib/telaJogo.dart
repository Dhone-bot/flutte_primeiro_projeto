import 'package:flutter/material.dart';

class TelaJogo extends StatefulWidget {
  const TelaJogo(
    this.nomeHeroi,
    this.urlImagem,
    this.vida,
    this.moedas,
    this.poder, 
    {super.key,});

  final String nomeHeroi;
  final String urlImagem;
  final int moedas;
  final int poder;
  final int vida;

  @override
  State<TelaJogo> createState() => TelaJogoState();
}

class TelaJogoState extends State<TelaJogo> {

  double posisaohorizontal = 50;
  int miliss = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            
            child: Image.network
            ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9wWawPb9PGI8CKAIxyI3zVuPyR7eI0b0zpo5liEG3jA&s=10',
            fit: BoxFit.cover,
            )
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
                      'Classe:  ${widget.nomeHeroi}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(), // Linha divisória
                    Text(
                      '❤️ Vida: ${widget.vida}',
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    Text(
                      '💰 Moedas: ${widget.moedas}',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.orange,
                      ),
                    ),
                    Text(
                      '⚔️ Poder: ${widget.poder}',
                      style: const TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: miliss),
            curve: Curves.bounceIn,
            left: posisaohorizontal,
            bottom: 120,
            child: Image.network(widget.urlImagem, height: 130,),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            child: Text("esquerda"))
            onpresser
        ],
      ),
    );
  }
  void direita() {
  setState((){
    posisaohorizontal += 40;

  });
}

void esquerda() {
  setState(() {
    posisaohorizontal -= 40;
  });
}
}

