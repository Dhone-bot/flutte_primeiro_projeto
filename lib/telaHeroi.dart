import 'package:flutter/material.dart';

class TelaJogoHeroi extends StatefulWidget {
  const TelaJogoHeroi({super.key});

  @override
  State<TelaJogoHeroi> createState() => TelaJogoHeroiState();
}


class TelaJogoHeroiState extends State<TelaJogoHeroi> {
  String nomeHeroi = '';
  int vida = 0;
  int moedas = 0;
  int poder = 0;
  String urlImagem = '';
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
     Center(
       child: Column(
        children: [
          Text("Escolha seu heroi: "),
          Row(
            children: [
              ElevatedButton(
                onPressed: () => escolherHeroi("Guerreiro"), 
                child: Text("Guerreiro")
                ),
                ElevatedButton(
                onPressed: () => escolherHeroi("Mago"), 
                child: Text("Mago")
                ),
                ElevatedButton(
                onPressed: () => escolherHeroi("Arqueiro"), 
                child: Text("Arqueiro")
                ),
            ],
          ),
          Card(
             elevation: 5, // Dá uma sombra 3D ao cartão
              color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text('Classe: $nomeHeroi', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const Divider(), // Linha divisória
                      Text('❤️ Vida: $vida', style: const TextStyle(fontSize: 18, color: Colors.red)),
                      Text('💰 Moedas: $moedas', style: const TextStyle(fontSize: 18, color: Colors.orange)),
                      Text('⚔️ Poder: $poder', style: const TextStyle(fontSize: 18, color: Colors.blue)),
                    ],
                  ),
                ),
              ),
        ],
       )
      )
    );
  }
  void escolherHeroi(String tipoHeroi){
  setState(() {
    if(tipoHeroi == "Guerreiro") {
      nomeHeroi = "Guerreiro";
      vida = 200;
      moedas = 50;
      poder = 100;
      urlImagem = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCY6LTA8BspdrF9bvIWOTJHYWVqsZRIvGi7l8_uFRPJQ&s=10";
    } else if(tipoHeroi == "mago") {
      nomeHeroi = "Mago";
      vida = 50;
      moedas = 100;
      poder = 200;
      urlImagem = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOmnWFg2HVAYj2jHoL1pLbbw3nid6CmnCY2RYm59V4ew&s=10";
    } else if (tipoHeroi == "arqueiro") {
      nomeHeroi ="arqueiro";
      vida = 100;
      moedas = 200;
      poder = 100;
      urlImagem = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwwfGRjNVk4sRxVj0zS13mxw_e8eWdR5lNfikPs4P9Rg&s=10";
    }
  });  
}
}
