import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  controladorGeneral Control=Get.find();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(children: [
          DrawerHeader(decoration: BoxDecoration(
            color: Colors.deepPurple),child: UserAccountsDrawerHeader(
              accountName: Text('Brandon Mora'), 
              accountEmail: Text('ebmora@uninorte.edu.co'),
              decoration: BoxDecoration(
                color: Colors.purple),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(
                "https://grandmontagne.es/wp-content/uploads/2021/03/GrandGym_Gimnasio-Grandmontagne_Burgos_Silueta.png"
              ), backgroundColor: Colors.white,

              ),

            ),),
            Divider(),
            Expanded(child: ListView(children: [
              ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pop(context);
                Control.cambiarposicion(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Comprar'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pop(context);
                Control.cambiarposicion(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopify),
              title: Text('Mis productos'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pop(context);
                Control.cambiarposicion(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Acerca de...'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pop(context);
                Control.cambiarposicion(3);
              },
            )
            
        
            ],))

        ]),
      ),
    );
  }
}