import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: must_be_immutable
class OtherStatus extends StatefulWidget {
  late String image , name , date ;
  late bool isSeen ;
  late int num;
  OtherStatus({required this.name , required this.image , required this.date , required this.isSeen , required this.num});
  @override
  _OtherStatusState createState() => _OtherStatusState();
}

class _OtherStatusState extends State<OtherStatus> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomPaint(
        painter: StatusPainter(isSeen: widget.isSeen, num: widget.num),
        child: CircleAvatar(
          radius: 27.r,
          backgroundImage: AssetImage(widget.image),
        ),
      ),
      title: Text(
        widget.name,
        style: TextStyle(
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        widget.date,
        style: TextStyle(
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
degreeToAngle(double degree){
  return degree * pi/180 ;
}
class StatusPainter extends CustomPainter{

  late bool isSeen ;
  late int num;
  StatusPainter({required this.isSeen , required this.num});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 2.5
      ..color = isSeen ? Colors.grey : Colors.green.shade800
      ..style = PaintingStyle.stroke ;
    drawArc(canvas , size , paint);
  }
  void drawArc(Canvas canvas , Size size , Paint paint){
    if(num == 1){
      canvas.drawArc(
          Rect.fromLTWH( 1.r , -2.5.r , size.width -2.5.r , size.height +5.r ),
          degreeToAngle(0),
          degreeToAngle(360),
          false,
          paint
      );
    }
    else{
      double degree = -90 , arc = 360 / num;
      for(int i = 0 ; i<num ; i++){
        canvas.drawArc(
            Rect.fromLTWH( 1.r , -2.5.r , size.width -2.5.r , size.height +5.r ),
            degreeToAngle(degree+4),
            degreeToAngle(arc - 3),
            false,
            paint
        );
        degree += arc ;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}