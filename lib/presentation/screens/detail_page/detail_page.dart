import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullImagePage extends StatelessWidget {
  final String link;

  FullImagePage({required this.link});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'fullImage',
      child: Container(
        child: PhotoView(
          enableRotation: true,
          imageProvider: NetworkImage(link),
        ),
      ),
    );
  }
}
