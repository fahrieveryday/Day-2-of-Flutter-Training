import 'package:flutter/material.dart';

class TabCamera extends StatelessWidget {
  const TabCamera({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.camera_alt, color: Colors.black45, size: 50,),
    );
  }
}