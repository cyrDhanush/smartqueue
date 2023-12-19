import 'package:flutter/material.dart';
import 'package:smartqueue/constants.dart';

class TopWave extends StatelessWidget {
  final String title;
  final double height;
  const TopWave({Key? key, this.title = 'Title', this.height = 150})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: ClipPath(
        clipper: WaveClipper(),
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: themepink,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size s) {
    Path path = Path();
    path.lineTo(0, s.height - 30);
    Offset p2 = Offset(s.width / 4, s.height);
    Offset p3 = Offset(s.width / 2, (s.height / 3) * 2.2);
    Offset p4 = Offset((s.width / 4) * 3, 60);
    Offset p5 = Offset(s.width, s.height - 60);
    path.quadraticBezierTo(p2.dx, p2.dy, p3.dx, p3.dy);
    path.quadraticBezierTo(p4.dx, p4.dy, p5.dx, p5.dy);
    path.lineTo(s.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
