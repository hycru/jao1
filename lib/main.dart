import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'navigator 1',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const PrimeiraRota(),
    
  ));
}
//primeira pagina
class PrimeiraRota extends StatelessWidget {
  const PrimeiraRota({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Rota 1'),
        ),
      body: ElevatedButton(
        child: const Text('segunda tela'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Rota2()));
        },
      ),
      
    );
  }
}
//SEGUNDA Pagina

class Rota2 extends StatelessWidget {
  const Rota2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Rota 2'),
        ),
      
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            
            child: const Icon(Icons.tv),
          ),
        )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
