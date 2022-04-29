/*
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? imageFile ;
  void _getFormeCamera() async {
    XFile? pickerFile = await ImagePicker().pickImage(
        source: ImageSource.camera ,
      maxHeight: 1080,
      maxWidth: 1080
    );
    setState(() {
      imageFile = File(pickedFile.path.toString()) ;
    });
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


*/