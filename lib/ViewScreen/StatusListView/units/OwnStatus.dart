import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OwnStatus extends StatefulWidget {
  const OwnStatus({Key? key}) : super(key: key);

  @override
  _OwnStatusState createState() => _OwnStatusState();
}

class _OwnStatusState extends State<OwnStatus> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Badge(
        badgeColor: Colors.teal.shade800,
        elevation: 0,
        badgeContent: Icon(
          Icons.add,
          color: Colors.white,
          size: 12.r,
        ),
        position: BadgePosition(
          bottom: 3.r,
          end: -3.r
        ),
        child: CircleAvatar(
          radius: 27.r,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('images/image2.jpg'),
        ),
      ),
      title: Text(
          "My status",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        "Tap to add status to update",
        style: TextStyle(
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
