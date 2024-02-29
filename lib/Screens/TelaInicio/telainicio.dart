import 'package:aifood/CustomWidgets/card.dart';
import 'package:aifood/CustomWidgets/slide.dart';
import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('R. Ari Barroso, 330', style: textNunitoBold(14)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                card(170, 80, Colors.deepPurple, "Pet", "assets/pet.png"),
                card(170, 80,  Colors.deepPurple, "Mercado", "assets/mercado.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                carddois(90, 100, Colors.deepPurple[50], "Farmácia", "assets/farmacia.png"),
                carddois(90, 100, Colors.deepPurple[50], "Bebidas", "assets/bebidas.png"),
                const SizedBox(width: 10),
                carddois(90, 100, Colors.deepPurple[50], "Sucos", "assets/sucos.png"),
                carddois(90, 100, Colors.deepPurple[50], "Pizza", "assets/pizza.png"),
              ],
            ),
          ),
          const Slide(),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 120,
            child: Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  cardquatro(110, 100, Colors.green[300], "Mercado", "assets/mercado.png"),
                  const SizedBox(width: 5),
                  cardquatro(110, 100, Colors.yellow[300], "Padarias", "assets/bebidas.png"),
                  const SizedBox(width: 5),
                  cardquatro(110, 100, Colors.pink[200], "Promoções", "assets/sucos.png"),
                  const SizedBox(width: 5),
                  cardquatro(110, 100, Colors.deepPurple[200], "Bolos", "assets/bolo.png"),
                  const SizedBox(width: 5),
                  cardquatro(110, 100, Colors.orange[200], "Cafeteria", "assets/cafe.png"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text("Pra quem curte Padaria", style: textNunitoBold(18)),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 180,
            child: Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  cardtres(Colors.deepPurple[50], "Pães", "assets/paes.jpg"),
                  const SizedBox(width: 5),
                  cardtres(Colors.deepPurple[50], "Sonhos", "assets/sonho.jfif"),
                  const SizedBox(width: 5),
                  cardtres(Colors.deepPurple[50], "Donuts", "assets/donuts.jpg"),
                  const SizedBox(width: 5),
                  cardtres(Colors.deepPurple[50], "Pão de queijo", "assets/paodequeijo.webp"),
                  const SizedBox(width: 5),
                  cardtres(Colors.deepPurple[50], "Empada", "assets/empada.webp"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}