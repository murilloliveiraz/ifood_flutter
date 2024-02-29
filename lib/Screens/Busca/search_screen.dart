import 'package:aifood/CustomWidgets/card.dart';
import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Buscar em todo o aiFood',
              border:  UnderlineInputBorder(),
              contentPadding:  EdgeInsets.all(7),
              prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 204, 22, 9)),
              filled: true,
              fillColor: Colors.grey,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text('Categorias', style: textRobotoBold(16)),
          ),
          Wrap(
            children: [
              card(185, 50, Colors.red, 'Mercado', 'assets/mercado.png'),
              card(185, 50, Colors.orange, 'Farmácia', 'assets/farmacia.png'),
              card(185, 50, const Color.fromARGB(235, 221, 140, 19), 'Bebidas', 'assets/bebidas.png'),
              card(185, 50, const Color.fromARGB(255, 1, 100, 4), 'Pet', 'assets/pet.png'),
              card(185, 50, Colors.deepPurple, 'Açai', 'assets/sorvete.png'),
              card(185, 50, Colors.orange, 'Bolo', 'assets/bolo.png'),
              card(185, 50, Colors.orange, 'Sorvete', 'assets/sorvete.png'),
              card(185, 50, Colors.pink, 'Café', 'assets/sorvete.png'),
              card(185, 50, Colors.pink, 'Lanches', 'assets/lanches.png'),
              card(185, 50, Colors.orange, 'Pizza', 'assets/pizza.png'),
              card(185, 50, Colors.orange, 'Espetinho', 'assets/carnes.png'),
              card(185, 50, Colors.orange, 'Hot Dog', 'assets/hotDog.png'),
              card(185, 50, const Color.fromARGB(255, 206, 161, 93), 'Marmita', 'assets/marmita.png'),
              card(185, 50, Colors.orange, 'Suco', 'assets/sucos.png'),
              card(185, 50, Colors.orange, 'Sopa', 'assets/sopas.png'),
            ],
          )
        ],
      ),
    );
  }
}