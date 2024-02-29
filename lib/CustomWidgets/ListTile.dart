import 'package:aifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

Widget listTile(IconData iconLeading, String title, String subtitle){
  return ListTile(
    onTap: () {},
    leading: Icon(iconLeading),
    title: Text(title, style: textNunitoBold(16),),
    subtitle: Text(subtitle, style: textNunito300(14),),
    trailing: const Icon(Icons.arrow_right),
  );
}