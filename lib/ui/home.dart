
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';
import 'package:reto2/ui/menu.dart';
import 'package:reto2/ui/pag1_Inicio.dart';
import 'package:reto2/ui/pag2_Comprar.dart';
import 'package:reto2/ui/pag3_misProds.dart';
import 'package:reto2/ui/pag4_Acercade.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Shopping Cart'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List paginas=[pag1_inicio(),pag2_comprar(),
 pag3_misproductos(),pag4_acercade()];

class _MyHomePageState extends State<MyHomePage> {

  controladorGeneral Control=Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx((() => paginas[Control.posicionPagina])) ,
    );
  }
}
