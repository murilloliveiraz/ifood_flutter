import 'dart:js_util';

import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

Container card(double largura, double altura, Color? color, String texto, String img){
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: color,
    ),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunitoWhiteBold(16),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 64, height: 64),
          ),
        ],
      ),
    ),
  );
}

Container carddois(double largura, double altura, Color? color, String texto, String img){
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: color,
    ),
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 32, height: 32),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunito300(14),),
          ),
        ],
      ),
    ),
  );
}

Container cardquatro(double largura, double altura, Color? color, String texto, String img){
  return Container(
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Image.asset(img, width: 60, height: 60),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.deepPurple[50],
            child: Padding(
            padding: EdgeInsets.all(10.0), // Define o preenchimento interno de 10 pixels em todas as direções
            child: Text(texto, textAlign: TextAlign.center),
          ),
          )
        ],
      ),
    ),
  );
}

Container cardtres(Color? color, String texto, String img){
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: 100,
    height: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: color,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: SizedBox(
            height: 100,
            width: double.infinity,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 50,
            child: Text(
              texto,
              style: TextStyle(fontSize: 14), // Estilo do texto
            ),
        ),
      ],
    ),
  );
}

Container cardUltimoPedido( Color? color, String texto, String img){
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: 300,
    height: 180,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: color,
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Peça de novo", style: textNunitoBold(20)),
                    Text(texto, style: textNunito300(16)),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(img, width: 50, height: 50),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[600],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                ), 
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                width: double.infinity,
                height: 40,
                child: Text('Pedir novamente', style: textNunitoWhiteBold(16), textAlign: TextAlign.center,),
              ),
            ),
          ),  
        ],
      ),
    ),
  );
}


Container cardPedido( Color? color, String texto, String pedido, String img){
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: 300,
    height: 220,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: color,
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height : 20),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(img, width: 50, height: 50),
                    ),
                    SizedBox(width: 20),
                    Text(texto, style: textNunitoBold(16)),
                  ],
                ),
                SizedBox(height: 20),
                Text("Pedido concluido - N°370", style: textNunito300(12)),
                Text(pedido, style: textNunito300(12),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                      child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        ), 
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 20,
                        child: Text('Adicionar a Sacola', style: textNunitoWhiteBold(16).copyWith(color: Colors.red[600]), textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  Expanded(
                      child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        ), 
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 20,
                        child: Text('Ajuda', style: textNunitoWhiteBold(16).copyWith(color: Colors.red[600]), textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                ],
              ),
            ),            
          ),  
        ],
      ),
    ),
  );
}