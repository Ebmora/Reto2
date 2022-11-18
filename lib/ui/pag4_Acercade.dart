import 'package:flutter/material.dart';

class pag4_acercade extends StatefulWidget {
  const pag4_acercade({super.key});

  @override
  State<pag4_acercade> createState() => _pag4_acercadeState();
}

class _pag4_acercadeState extends State<pag4_acercade> {
  @override
  Widget build(BuildContext context) {
    return Container(child: ListView(
      children: [ListTile(
        leading: Icon(Icons.person),
        title: Text("Grupo 6 "),
        subtitle: Text('MisiónTIC2022'),)],
    ),);
  }
}