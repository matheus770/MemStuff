import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraInputArea extends StatefulWidget {
  final double height;
  final double radius;
  final String label;

  const CameraInputArea(
      {Key key, this.height = 180.0, this.radius = 10.0, this.label})
      : super(key: key);

  @override
  _CameraInputAreaState createState() => _CameraInputAreaState();
}

class _CameraInputAreaState extends State<CameraInputArea> {
  final picker = ImagePicker();
  File _image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onCapturePhoto,
      child: Container(
        height: widget.height,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        child: Center(
          child: _image == null ? Text(widget.label) : Image.file(_image),
        ),
      ),
    );
  }

  Future _onCapturePhoto() async {
    final file = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if(file != null){
        _image = File(file.path);
      }
        });
  }
}
