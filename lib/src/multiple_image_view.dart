import 'package:flutter/material.dart';
import 'package:newsfeed_multiple_imageview/src/smart_image.dart';

class MultipleImageView extends StatelessWidget {
  final List<String> imageUrls;
  const MultipleImageView({
    super.key,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _contentRender(),
    );
  }

  List<Widget> _contentRender() {
    switch (imageUrls.length) {
      case 1:
        return _singleImageView();

      case 2:
        return _twoImageView();

      case 3:
        return _threeImageView();

      case 4:
        return _foureImageView();

      default:
        return _multipleImageView();
    }
  }

  List<Widget> _singleImageView() {
    return [
      Expanded(
        flex: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SmartImage(
            imageUrls.first,
            fit: BoxFit.cover,
            isPost: true,
          ),
        ),
      ),
    ];
  }

  List<Widget> _twoImageView() {
    return [
      Expanded(
        flex: 1,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: SmartImage(
            imageUrls.first,
            fit: BoxFit.cover,
            isPost: true,
          ),
        ),
      ),
      const SizedBox(width: 5),
      Expanded(
        flex: 1,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: SmartImage(
            imageUrls.last,
            fit: BoxFit.cover,
            isPost: true,
          ),
        ),
      )
    ];
  }

  List<Widget> _threeImageView() {
    return [
      Expanded(
        flex: 1,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: SmartImage(
            imageUrls[0],
            fit: BoxFit.cover,
            isPost: true,
          ),
        ),
      ),
      const SizedBox(width: 5),
      Expanded(
        flex: 1,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
                child: SmartImage(
                  imageUrls[1],
                  fit: BoxFit.cover,
                  isPost: true,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                ),
                child: SmartImage(
                  imageUrls[2],
                  fit: BoxFit.cover,
                  isPost: true,
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> _foureImageView() {
    return [
      Expanded(
        flex: 2,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: SmartImage(
            imageUrls[0],
            fit: BoxFit.cover,
            isPost: true,
          ),
        ),
      ),
      const SizedBox(width: 5),
      Expanded(
        flex: 1,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
                child: SmartImage(
                  imageUrls[1],
                  fit: BoxFit.cover,
                  isPost: true,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              flex: 1,
              child: ClipRRect(
                child: SmartImage(
                  imageUrls[2],
                  fit: BoxFit.cover,
                  isPost: true,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                ),
                child: SmartImage(
                  imageUrls[3],
                  fit: BoxFit.cover,
                  isPost: true,
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> _multipleImageView() {
    return [
      Expanded(
        flex: 2,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: SmartImage(
            imageUrls[0],
            fit: BoxFit.cover,
            isPost: true,
          ),
        ),
      ),
      const SizedBox(width: 5),
      Expanded(
        flex: 1,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
                child: SmartImage(
                  imageUrls[1],
                  fit: BoxFit.cover,
                  isPost: true,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              flex: 1,
              child: ClipRRect(
                child: SmartImage(
                  imageUrls[2],
                  fit: BoxFit.cover,
                  isPost: true,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              flex: 1,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                    ),
                    child: SmartImage(
                      imageUrls[3],
                      fit: BoxFit.cover,
                      isPost: true,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        '+${imageUrls.length - 4}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
