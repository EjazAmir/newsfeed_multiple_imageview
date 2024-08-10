import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:newsfeed_multiple_imageview/src/smart_image.dart';

class ImageViewer extends StatelessWidget {
  final List<String> imageUrls;

  const ImageViewer({
    super.key,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: SafeArea(
            top: false,
            left: false,
            right: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Expanded(
                  child: ImageSlideshow(
                    initialPage: 0,
                    indicatorColor: Colors.red,
                    indicatorBackgroundColor: Colors.grey,
                    isLoop: imageUrls.length > 1,
                    children: imageUrls
                        .map(
                          (e) => ClipRect(
                            child: SmartImage(
                              e,
                              fit: BoxFit.contain,
                              isPost: true,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
