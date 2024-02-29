import 'package:aifood/CustomWidgets/ListTile.dart';
import 'package:aifood/CustomWidgets/circleAvatar.dart';
import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: const Text('Perfil'),
      // ),
      body: ListView(
        children: [
          Row(
            children: [
              espacoHorizontal(8),
              circleAvatar('assets/avatar.png'),
              espacoHorizontal(16),
              Text(
                'Murillo Oliveira',
                style: textRobotoBold(16),
               ),
            ],
          ),
        listTile(Icons.message, "Conversas", "Meu histórico de conversas"),
        const Divider(),
        listTile(Icons.notifications, "Notificações", "Minha central de notificações"),
        const Divider(),
        listTile(Icons.payment, "Pagamentos","Meus saldos de cartões"),
        const Divider(),
        listTile(Icons.store, "Assinaturas","Minhas assinaturas"),
        const Divider(),
        listTile(Icons.loyalty, "Clube aiFood","Meus beneficios exclusivos"),
        const Divider(),
        listTile(Icons.local_offer, "Cupons","Meus cupons de desconto"),
        const Divider(),
        listTile(Icons.card_giftcard, "aiFood Card","Minha área de compra e resgate"),
        const Divider(),
        listTile(Icons.loyalty, "Fidelidade", "Minhas fidelidades"),
        const Divider(),
        listTile(Icons.favorite, "Favoritos", "Meus locais favoritos"),
        const Divider(),
        listTile(Icons.explore, "Descobrir", "Encontre novidades quentinhas"),
        const Divider(),
        listTile(Icons.location_on, "Endereços", "Meus endereços de entrega"),
        const Divider(),
        listTile(Icons.account_circle, "Dados da conta", "Minhas informaçoes"),
        const Divider(),
        ],
      ),
    );
  }
}