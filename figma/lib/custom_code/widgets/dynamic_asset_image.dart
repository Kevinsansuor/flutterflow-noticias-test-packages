// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class DynamicAssetImage extends StatefulWidget {
  const DynamicAssetImage({
    super.key,
    this.width,
    this.height,
    required this.imagePath,
  });

  final double? width;
  final double? height;
  final String imagePath;

  @override
  State<DynamicAssetImage> createState() => _DynamicAssetImageState();
}

class _DynamicAssetImageState extends State<DynamicAssetImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imagePath,
      width: widget.width,
      height: widget.height,
      fit: BoxFit.cover,
    );
  }
}
