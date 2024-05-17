//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:matus0380/drawer_menu.dart';

class Stuck extends StatefulWidget {
  static const String routeName = '/ubicacion';

  @override
  State<Stuck> createState() => _StuckState();
}

class _StuckState extends State<Stuck> {
  //create the controllers
  TextEditingController estadoController = TextEditingController();
  TextEditingController ciudadController = TextEditingController();
  TextEditingController paisController = TextEditingController();
  TextEditingController cpController = TextEditingController();
  TextEditingController zhController = TextEditingController();
  TextEditingController coloniaController = TextEditingController();
  TextEditingController nomCalleController = TextEditingController();
  TextEditingController numCalleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro de Stock'),
      ),
      drawer: DrawerMenu(),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('id articulo'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: estadoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id del articulo',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('id Provedor'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: paisController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id del articulo',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: ciudadController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el nombre del articulo',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Descripcion'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cpController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa una descripcion del articulo',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('unidad de medida'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: zhController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la unidad de medida',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Cantidad'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: coloniaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la cantidad con la que contamos',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Minimos'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nomCalleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el minimo que e debe tener del articulo',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Maximos'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: numCalleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el maximo que e debe tener del articulo',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos de ubicacion se registraron con exito');
                  print('id articulo: ' + estadoController.text);
                  print('id provedor: ' + ciudadController.text);
                  print('Nombre: ' + paisController.text);
                  print('Descripcion: ' + cpController.text);
                  print('Unidad de medida: ' + zhController.text);
                  print('Cantidad: ' + coloniaController.text);
                  print('minimos: ' + nomCalleController.text);
                  print('maximos: ' + numCalleController.text);
                },
                child: Text(
                  'Enviar',
                  style: TextStyle(
                    fontSize: 20,
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
