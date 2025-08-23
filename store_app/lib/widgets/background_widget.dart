import 'package:flutter/material.dart';
import 'custom_clippers.dart';

class BackgroundWidget extends StatelessWidget {
  final bool includeTopCircle;
  final bool includeBottomCircle;
  final bool includeTopWave;
  final bool includeBottomWave;

  const BackgroundWidget({
    Key? key,
    this.includeTopCircle = false,
    this.includeBottomCircle = false,
    this.includeTopWave = false,
    this.includeBottomWave = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // صورة الخلفية من الجهاز
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // باقي الكود بدون تغيير...
        // أشكال الخلفية
        if (includeTopCircle)
          Positioned(
            top: -100,
            right: -100,
            child: ClipPath(
              clipper: CircleClipper(),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue[800]!, Colors.blue[400]!],
                  ),
                ),
              ),
            ),
          ),
        if (includeBottomCircle)
          Positioned(
            bottom: -100,
            left: -100,
            child: ClipPath(
              clipper: CircleClipper(),
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue[700]!, Colors.blue[300]!],
                  ),
                ),
              ),
            ),
          ),
        if (includeTopWave)
          Positioned(
            top: -80,
            right: -80,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue[800]!, Colors.blue[400]!],
                  ),
                ),
              ),
            ),
          ),
        if (includeBottomWave)
          Positioned(
            bottom: -100,
            left: -100,
            child: ClipPath(
              clipper: WaveClipper(reverse: true),
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue[700]!, Colors.blue[300]!],
                  ),
                ),
              ),
            ),
          ),
        // تدرج لوني للتعتيم
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                // ignore: deprecated_member_use
                Colors.black.withOpacity(.9),
                // ignore: deprecated_member_use
                Colors.black.withOpacity(.4),
              ],
            ),
          ),
        ),
      ],
    );
  }
}