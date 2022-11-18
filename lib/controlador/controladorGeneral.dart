import 'package:get/get.dart';
import 'package:reto2/clases/productos.dart';

class controladorGeneral extends GetxController{
  final _posicionPagina=0.obs;
  final pro=<productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(1, "Libreta Negra", "https://artenostro.pe/wp-content/uploads/2021/03/234410-55228-05-1-600x600.jpg", 0, 25000));
    pro.add(productos(2, "Libreta Gris", "https://panamericana.vteximg.com.br/arquivos/ids/345724-1600-1600/libreta-ejecutiva-14-x-21-cm-plata-diamante-7701016802871.jpg?v=637157479946970000", 0, 23000));
    pro.add(productos(3, "Pluma Negra", "https://www.joyeriasergell.com/wp-content/uploads/2022/07/Pluma-negra-.jpeg", 0, 79990));
    pro.add(productos(4, "Pluma Gris", "https://plumas.club/wp-content/uploads/2017/01/tipo-pluma.jpg", 0, 78990));
    pro.add(productos(5, "Paquete Tintas para Escritura", "https://www.zyxideas.com/wp-content/uploads/2016/07/Tintas-plumas-estilograficas-Divine-Design-DD-Dropper-1.jpg", 0, 180000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x){
    _posicionPagina.value=x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor){
    pro[posicion].cantidad=valor;
  }

  int calcularTotal(){
    int total=0;
    for (var i = 0; i < pro.length; i++) {
      total=total+pro[i].cantidad*pro[i].precio;
    }
    return total;

  }

  void limpiartodo(){
    for (var i = 0; i < pro.length; i++) {
      pro[i].cantidad=0;
    }
    calcularTotal();
  }

}