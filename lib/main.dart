import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const PageHome(title: 'Layout page'),
    );
  }
}

class PageHome extends StatefulWidget {
  const PageHome({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                //color: const Color.fromARGB(255, 151, 255, 238),
                child: const Text('Top layout'),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      //color: const Color.fromARGB(255, 151, 255, 158),
                      // child: const Text('Left layout'),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.center,
                      //color: const Color.fromARGB(255, 246, 186, 96),
                      decoration: BoxDecoration(
                        color: Colors.blue, // Cor do container
                        borderRadius:
                            BorderRadius.circular(15),
                            border: Border.all( color: const Color.fromARGB(255, 0, 0, 0), // Cor da borda 
                            width: 3, // Largura da borda 
                            ), // Borda arredondada
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(
                                0.5), // Cor da sombra com opacidade
                            spreadRadius: 5, // Expansão da sombra
                            blurRadius: 7, // Desfoque da sombra
                            offset: const Offset(
                                0, 3), // Deslocamento da sombra (x, y)
                          ),
                        ],
                      ),
                      child: const Text('Website logo'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      //color: const Color.fromARGB(255, 196, 150, 248),
                      //child: const Text('Right layout'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                //color: const Color.fromARGB(255, 255, 253, 151),
                child: const Text('Bottom layout'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
