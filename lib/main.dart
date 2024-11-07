import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Inicia la aplicación
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // Título de la aplicación
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Esquema de colores
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // Página principal
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // Título de la página

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Crea el estado de la página
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Contador

  void _incrementCounter() {
    setState(() {
      _counter++; // Incrementa el contador
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Color de la barra de la aplicación
        title: Text(widget.title), // Título de la barra de la aplicación
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra los hijos verticalmente
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:', // Texto fijo
            ),
            Text(
              '$_counter', // Muestra el contador
              style: Theme.of(context).textTheme.headlineMedium, // Estilo del texto
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Acción al presionar el botón
        tooltip: 'Increment', // Tooltip del botón
        child: const Icon(Icons.add), // Icono del botón
      ),
    );
  }
}