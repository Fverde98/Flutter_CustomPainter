import 'package:flutter/material.dart';
class HeaderCuadrado extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
       color: const Color(0xff615AAB),
    );
  }
}

class HeaderRedondeados extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
       decoration: const BoxDecoration(
        color:  Color(0xff615AAB),
        borderRadius:  BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70))
       ),
    );
  }
}
class HeaderDiagonal extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
          height: double.infinity,
          width: double.infinity,
          child: CustomPaint(
            painter: _HeaderDiagonalPainter(),
          ),
        
    );
  }
}
class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
      lapiz.color = const Color(0xff615AFB);
      lapiz.style = PaintingStyle.fill;
      lapiz.strokeWidth = 20;

      final path =  Path();
      path.moveTo(0, size.height * 0.35);
      path.lineTo(size.width, size.height * 0.30);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
      


      canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
class HeaderTriangular extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
          height: double.infinity,
          width: double.infinity,
          
          child: CustomPaint(
            painter: _HeaderTriangularPainter(),
          ),
    );
  }
}
class _HeaderTriangularPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
      lapiz.color = const Color(0xff615AFB);
      lapiz.style = PaintingStyle.fill;
      lapiz.strokeWidth = 20;

      final path =  Path();
      //path.moveTo(size.height * 0.50, 0 );
      path.lineTo(size.width, size.height );
      path.lineTo(0, size.height );
     
      


      canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class HeaderPico extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: double.infinity,
          width: double.infinity,
          
          child: CustomPaint(
            painter: _HeaderPicoPainter(),
          ),
    );
  }
}
class _HeaderPicoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
      lapiz.color = const Color(0xff615AFB);
      lapiz.style = PaintingStyle.fill;
      lapiz.strokeWidth = 20;

      final path =  Path();
      //path.moveTo(size.height * 0.50, 0 );
      path.lineTo(0, size.height* 0.20);
      path.lineTo(size.width * 0.5, size.height* 0.28);
      path.lineTo(size.width , size.height* 0.20);
      path.lineTo(size.width ,0);

      canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class HeaderCurvo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: double.infinity,
          width: double.infinity,
          
          child: CustomPaint(
            painter: _HeaderCurvoPainter(),
          ),
    );
  }
}
class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
      lapiz.color = const Color(0xff615AFB);
      lapiz.style = PaintingStyle.fill;
      lapiz.strokeWidth = 20;

      final path =  Path();
      //path.moveTo(size.height * 0.50, 0 );
      path.lineTo(0, size.height* 0.20);
      path.quadraticBezierTo(size.width * 0.5, size.height* 0.40, size.width, size.height* 0.20);
      path.lineTo(size.width,0);
      
    

      canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class HeaderWave extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: double.infinity,
          width: double.infinity,
          
          child: CustomPaint(
            painter: _HeaderWavePainter(),
          ),
    );
  }
}
class _HeaderWavePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
      lapiz.color = const Color(0xff615AFB);
      lapiz.style = PaintingStyle.fill;
      lapiz.strokeWidth = 50;

      final path =  Path();
      //path.moveTo(size.height * 0.50, 0 );
      path.lineTo(0, size.height* 0.25);
      path.quadraticBezierTo(size.width * 0.25, size.height* 0.30, size.width* 0.5, size.height* 0.25);
      path.quadraticBezierTo(size.width * 0.75, size.height* 0.20, size.width, size.height* 0.25);
      path.lineTo(size.width,0);

      canvas.drawPath(path, lapiz);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class HeaderWaveGradient extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: double.infinity,
          width: double.infinity,
          
          child: CustomPaint(
            painter: _HeaderWaveGradientPainter(),
          ),
    );
  }
}
class _HeaderWaveGradientPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect =  Rect.fromCircle(
      center: const Offset(0.0,55.0), 
      radius: 180);

    final Gradient gradiente = new LinearGradient(
      begin:  Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: const  <Color>[
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05FA),
      ],
      stops: const [
        0.2,
        0.5,
        1.0
      ]
      );

    final lapiz = Paint()..shader = gradiente.createShader(rect);
      
      lapiz.style = PaintingStyle.fill;
      lapiz.strokeWidth = 50;

      final path =   Path();
      //path.moveTo(size.height * 0.50, 0 );
      path.lineTo(0, size.height* 0.25);
      path.quadraticBezierTo(size.width * 0.25, size.height* 0.30, size.width* 0.5, size.height* 0.25);
      path.quadraticBezierTo(size.width * 0.75, size.height* 0.20, size.width, size.height* 0.25);
      path.lineTo(size.width,0);

      canvas.drawPath(path, lapiz);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
