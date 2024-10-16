import 'package:diseno_app/src/widgets/radiasProgress.dart';
import 'package:flutter/material.dart';
class GraficasCircularesPage extends StatefulWidget {
  const GraficasCircularesPage({super.key});

  @override
  State<GraficasCircularesPage> createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  double porcentaje =0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          setState(() {
            porcentaje+=10;
            if(porcentaje>100){
              porcentaje=0;
            }
          });
        }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CustomRadialProgress(porcentaje: porcentaje, color: Colors.purple,),
                CustomRadialProgress(porcentaje: porcentaje, color: Colors.red,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CustomRadialProgress(porcentaje: porcentaje, color: Colors.blue,),
                CustomRadialProgress(porcentaje: porcentaje, color: Colors.green,)
              ],
            )
          ],
      )
      );
    
  }
}

class CustomRadialProgress extends StatelessWidget {
  final Color color;
  const CustomRadialProgress({
    required this.porcentaje,
    required this.color
  });

  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: RadialProgress(
        porcentaje: porcentaje,
        colorPrimario: this.color,
        colorSecundario: Colors.grey,
        grosorSecundario: 4,
        grosorPrimario: 10,),
    );
  }
}