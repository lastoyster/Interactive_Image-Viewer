import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interactive Viewer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interactive Viewer"),
        centerTitle: true,
      ),
      body: Center(
        child: InteractiveViewer(
          maxScale: 5.0, // Maximum zoom scale
          minScale: 0.01, //Minimum zoom scale
          boundaryMargin:
              const EdgeInsets.all(double.infinity), // Keeping margin
          child: Image.asset('lib/assets/img.jpg'),
        ),
      ),
    );
  }
}
