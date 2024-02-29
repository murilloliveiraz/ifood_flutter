import 'package:aifood/CustomWidgets/card.dart';
import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

class TelaPedido extends StatelessWidget {
  const TelaPedido({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          cardUltimoPedido(Colors.deepPurple[50], "Big Mac", "assets/mc.png"),
          SizedBox(height : 20),
          Text("Histórico", style: textNunitoBold(20)),
          SizedBox(height : 5),
          Text("Sáb, 10 de janeiro 2024"),
          cardPedido(Colors.deepPurple[50], "Mc Donalds", "Sundae Chocolate" ,"assets/mc.png"),
          cardPedido(Colors.deepPurple[50], "Burguer King", "Whopper" ,"assets/bk.png")
        ],
      ),
    );
  }
}