import 'package:aifood/CustomWidgets/menuInferior.dart';
import 'package:aifood/Screens/Busca/search_screen.dart';
import 'package:aifood/Screens/Profile/profile_screen.dart';
import 'package:aifood/Screens/TelaInicio/telainicio.dart';
import 'package:aifood/Screens/TelaPedido/telaPedido.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  //ir para o próximo item
  void nextStation(int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }
  //lista de páginas
  List<Widget> telas = const [
    TelaInicio(),
    TelaBusca(),
    TelaPedido(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas.elementAt(itemSelecionado),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}


