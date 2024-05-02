import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    // Declaración de variables
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación Sarmiento'),
        elevation: 10,
      ),
      backgroundColor: Color.fromARGB(255, 221, 154, 54),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Sarmiento.Espinoza'),
            const Text('Clic para cambiar número', style: fontSize30),
            Text('$contador', style: fontSize30),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador -= 10; // Resta 10 al contador
              });
            },
            child: const Icon(Icons.bolt),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador--; // Resta 2 al contador
              });
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador = 0; // Reinicia el contador a 0
              });
            },
            child: const Icon(Icons.refresh),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador++; // Incrementa 1 al contador
              });
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador += 10; // Incrementa 10 al contador
              });
            },
            child: const Icon(Icons.bolt),
          ),
        ],
      ),
    );
  }
}
