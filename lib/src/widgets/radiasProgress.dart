import 'dart:math';

import 'package:flutter/material.dart';
class RadialProgress extends StatefulWidget {
  

  final porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorSecundario;
  final double grosorPrimario;
  RadialProgress({
    @required
    this.porcentaje,
    this.colorPrimario = Colors.blue,
    this.colorSecundario = Colors.grey,
    this.grosorSecundario =4,
    this.grosorPrimario = 10});

    @override
  State<RadialProgress> createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress>  with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late double porcentajeAnterior;
  @override

  void initState() {
    porcentajeAnterior = widget.porcentaje;
    controller =  AnimationController(vsync: this, duration: const Duration(microseconds: 200));
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {

    controller.forward(from: 0.0);
    final diferenciaAnimar = widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior = widget.porcentaje;

    return AnimatedBuilder(
      animation: controller, 
      builder: (BuildContext context, child){
      return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(painter: _MiRadialProgress((
        widget.porcentaje - diferenciaAnimar) + (diferenciaAnimar* controller.value),
        widget.colorPrimario,
        widget.colorSecundario,
        widget.grosorSecundario,
        widget.grosorPrimario),
        ),
        );
      },
      );
  }
}
class _MiRadialProgress extends CustomPainter{
  final porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
   final double grosorSecundario;
   final double grosorPrimario;
  _MiRadialProgress(
     this.porcentaje,
     this.colorPrimario,
     this.colorSecundario,
     this.grosorSecundario,
     this.grosorPrimario

   );
  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = new Rect.fromCircle(center: Offset(0,0), radius: 180);

    final Gradient gradiente = new LinearGradient(colors: <Color> [
        Color(0xffC012FF),
        Color(0xff6D05E8),
        Colors.red
    ]);
    
    final paint =  Paint()
    ..strokeWidth = grosorSecundario
    ..color = colorSecundario
    ..style = PaintingStyle.stroke;

    final Offset center =  Offset(size.width * 0.5, size.height /2);
    final double radio = min(size.width * 0.5,size.height* 0.5);

    canvas.drawCircle(center, radio, paint);

    //arco
     final paintArco =  Paint()
    ..strokeWidth = grosorPrimario
    //..color = colorPrimario
    ..shader = gradiente.createShader(rect)
    ..strokeCap = StrokeCap.round
    ..style = PaintingStyle.stroke;

    double arcAngle = 2 * pi * (porcentaje/100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radio), 
      -pi /2, 
      arcAngle, 
      false, 
      paintArco);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>true;


}