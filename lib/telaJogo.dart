import 'package:flutter/material.dart';

class TelaJogo extends StatefulWidget {
  const TelaJogo(String nomeHeroi, String urlImagem, {super.key});

  @override
  State<TelaJogo> createState() => TelaJogoState();
}

class TelaJogoState extends State <TelaJogo> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Center(
       child: Container(
         width: double.infinity,  
          height: double.infinity, 
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://static.wikia.nocookie.net/hollowknight/images/8/88/Screenshot_HK_Royal_Waterways_10.png/revision/latest/scale-to-width-down/250?cb=20241212180218&path-prefix=pt'),
              fit: BoxFit.cover, 
            ),
          ),
       ),
    ),
   );
  }
}