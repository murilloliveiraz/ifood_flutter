import 'package:flutter/material.dart';

Widget circleAvatar(String img){
  return SizedBox(
      width: 50,
      height: 50,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(img),
      ),
  );
}