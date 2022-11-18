import 'package:flutter/material.dart';

class pag1_inicio extends StatefulWidget {
  const pag1_inicio({super.key});

  @override
  State<pag1_inicio> createState() => _pag1_inicioState();
}

class _pag1_inicioState extends State<pag1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Image(image: NetworkImage(
        'https://cdn-icons-png.flaticon.com/512/2331/2331966.png'
      ),)),
    );
  }
}