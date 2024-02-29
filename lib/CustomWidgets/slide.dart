import 'dart:async';
import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PageController pageController = PageController();
  List<double> progresso = [0.0, 0.0, 0.0];
  int qntPaginas = 3;
  int paginaAtual = 0;

  @override
  void initState(){
    super.initState();
    nextPage();
    iniciarProgresso();
  }

  nextPage(){
    Timer.periodic(Duration(seconds: 5), (timer) {
      int proximaPagina = paginaAtual + 1;
      if (proximaPagina >= qntPaginas){
        proximaPagina = 0;
      }

      pageController.animateToPage(proximaPagina, duration: Duration(milliseconds: 300), curve: Curves.linear)
      .then((_) {
        setState(() {
        paginaAtual = proximaPagina;
        reset();
      });
      });
    });
  }

  void iniciarProgresso(){
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        if (progresso[paginaAtual] < 1) {
          progresso[paginaAtual] += 0.02;
        }
        else {
          timer.cancel();
        }
      });
     });
  }

  List<Widget> buildIndicator(){
    List<Widget> lista = [];
    for (int i = 0; i < qntPaginas; i++) {
      lista.add(Container(
        width: 50,
        height: 5,
        margin: const EdgeInsets.all(8),
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(8),
          value: progresso[i],
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(paginaAtual == i ? Colors.blue: Colors.grey),
        ),
      ));
    }
    return lista;
  }

  void reset(){
    for(int i = 0; i < qntPaginas; i++){
      progresso[i] = 0.0;
    }
    iniciarProgresso();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
              PageView(
            controller: pageController,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/pizza.gif'),
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/massa.gif'),
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sanduiche.gif'),
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
            ],
          ),
          Padding(padding: const EdgeInsets.all(8),
          child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildIndicator(),
          ),)
        ],
      )
    );
  }
}