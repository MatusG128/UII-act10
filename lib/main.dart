import 'package:flutter/material.dart';
import 'package:matus0380/cliente.dart';
import 'package:matus0380/empleado.dart';
import 'package:matus0380/proveedor.dart';
import 'package:matus0380/stuck.dart';
import 'package:matus0380/pedido.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String cliente = Cliente.routeName;
  static const String empleado = Empleado.routeName;
  static const String proveedor = Proveedor.routeName;
  static const String stuck = Stuck.routeName;
  static const String pedido = Pedido.routeName;
  //static const String row_cinco = Row_cinco.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        cliente: (context) => Cliente(),
        empleado: (context) => Empleado(),
        proveedor: (context) => Proveedor(),
        stuck: (context) => Stuck(),
        pedido: (context) => Pedido(),
        //  row_cinco: (context) => Row_cinco(),
      },
      home: Cliente(),
    );
  }
}
