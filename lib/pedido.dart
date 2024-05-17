//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:matus0380/drawer_menu.dart';

class Pedido extends StatefulWidget {
  static const String routeName = '/pedido';

  @override
  State<Pedido> createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {
  //create the controllers
  TextEditingController idController = TextEditingController();
  TextEditingController idUbiController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController idProvController = TextEditingController();
  TextEditingController idEmplController = TextEditingController();
  TextEditingController tipoViController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController precioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro del Pedido'),
      ),
      drawer: DrawerMenu(),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Id'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id del pedido',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Id empleado'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idUbiController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id del empleado',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Id producto'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idProvController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id del producto',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('id cliente'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idEmplController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id cliente',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('fecha'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese la fecha del pedido',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('tipo de pago:'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: tipoViController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'efectivo, tarjeta, transferencia o pagare',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('hora pedido'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: direccionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'hora en que se realizo el epdido',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('total:'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: precioController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el total:',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos de vivienda se registraron con exito');
                  print('Id del pedido: ' + idController.text);
                  print('Id del emplado: ' + idUbiController.text);
                  print('Id del producto: ' + idProvController.text);
                  print('Id cliente: ' + idEmplController.text);
                  print('fecha: ' + nombreController.text);
                  print('Tipo de pago: ' + tipoViController.text);
                  print('hora del pedido: ' + direccionController.text);
                  print('total: ' + precioController.text);
                },
                child: Text(
                  'Enviar',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
