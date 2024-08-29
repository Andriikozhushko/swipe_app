import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class MapInFilter extends StatelessWidget {
  const MapInFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitef5,
        leading: IconButton(
          icon: Image.asset('assets/img/chevron-down.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Мои фильтры',
          style: appBarInfoPageText,
        ),
        titleSpacing: 0,
        actions: [
          IconButton(
            icon: Image.asset('assets/img/x-circle.png'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 40,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'р-н Центральный, ул. Темерязева 7',
                            hintStyle: searchHintText,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: 8,
                      child: Center(
                        child: Icon(Icons.search, color: grey,),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/img/bigmap.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                    ),
                    Positioned(
                      left: 70,
                      top: 500,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/img/map-pinmfs.png',
                            width: 50,
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 180,
                      top: 280,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/img/mepoint.png',
                            width: 30,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    CustomPaint(
                      painter: CurvedLinePainter(
                        start: const Offset(70 + 25, 500 + 25), // Позиция 'map-pinmfs.png'
                        controls: const [
                          Offset(100, 500),
                          Offset(155, 460),
                          Offset(160, 380),
                          Offset(180, 340),
                        ],
                        end: const Offset(180 + 15, 280 + 22), // Позиция 'mepoint.png'
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 13),
              width: 250,
              height: 52,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [gradientgreenlight1, blueaccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(35),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Подтвердить Адрес',
                    style: floatingButtonText.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Image.asset('assets/img/iconinmap.png', width: 26, height: 26,),
              ),
            ),
          ),








        ],
      ),
    );
  }
}

class CurvedLinePainter extends CustomPainter {
  final Offset start;
  final List<Offset> controls;
  final Offset end;

  CurvedLinePainter({required this.start, required this.controls, required this.end});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke;

    Path path = Path()
      ..moveTo(start.dx, start.dy);

    for (int i = 0; i < controls.length; i++) {
      final control = controls[i];
      final nextPoint = controls.length > i + 1 ? controls[i + 1] : end;
      path.cubicTo(
        control.dx,
        control.dy,
        control.dx,
        control.dy,
        nextPoint.dx,
        nextPoint.dy,
      );
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
