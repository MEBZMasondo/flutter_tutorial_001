import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
    home: MyHomePage(),
   );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello World Application')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show Dialog on pressed
            showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                title: const Text('Message'),
                content: const Text('Hello World'),
                actions: [
                  TextButton(onPressed :() {
                    Navigator.of(context).pop(); // Close the dialog
                  }, child: const Text('Close')
                  )
                ],
                );
            });
            
          }, child: const Text('Click Me'),
        ),
      ),
    );
  }
}
