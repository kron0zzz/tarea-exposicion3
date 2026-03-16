import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool cambiar = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Animación Interactiva")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              AnimatedContainer(
                duration: const Duration(seconds: 2),

                width: cambiar ? 220 : 120,
                height: cambiar ? 220 : 120,

                margin: EdgeInsets.only(
                  top: cambiar ? 50 : 0,
                ),

                decoration: BoxDecoration(
                  color: cambiar ? Colors.purple : Colors.orange,
                  borderRadius: BorderRadius.circular(
                    cambiar ? 40 : 0,
                  ),
                ),

              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {

                  setState(() {
                    cambiar = !cambiar;
                  });

                },
                child: const Text("Animar"),
              )

            ],
          ),
        ),
      ),
    );
  }
}