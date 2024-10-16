import 'package:diseno_app/src/challenge/cuadrado_animado_page.dart';
import 'package:diseno_app/src/pages/animaciones_page.dart';
import 'package:diseno_app/src/pages/graficasCircularesPage.dart';

//import 'package:diseno_app/src/widgets/headers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Diseños app',
        home:  GraficasCircularesPage()
     
    );
  }
}

