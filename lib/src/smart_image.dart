import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class SmartImage extends StatelessWidget {
  final String src;
  final BoxFit? fit;
  final bool isPost;
  final double? radius;

  const SmartImage(
    this.src, {
    super.key,
    this.fit,
    this.isPost = false,
    this.radius,
  });

  bool get networkImage => src.startsWith('https') || src.startsWith('http');
  //bool base64() => src.contains('[]');

  @override
  Widget build(BuildContext context) {
    return networkImage
        ? FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: src,
            fit: fit,
            imageErrorBuilder: (_, e, a) {
              return Container(
                alignment: Alignment.center,
                child: const Text(
                  "Error. Please check your internet connection",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
          )
        : isPost
            ? Image.file(
                File(src),
                fit: fit,
              )
            : CircleAvatar(
                radius: radius,
                backgroundImage: MemoryImage(
                  imageDecoder(src),
                  //fit: fit,
                ),
              );
  }

  Uint8List imageDecoder(String image) {
    final List<int> list = List<int>.from(jsonDecode(image));
    return Uint8List.fromList(list);
  }
}
