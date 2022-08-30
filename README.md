
A package provides an easy way to add facebook type multiple newsfeed imageview.

## How to use

        ```
        import 'package:shimmer/shimmer.dart';
        ```

        ```
         List<String> _imageUrls = [];

          @override
          void initState() {
            super.initState();

            _imageUrls.add("https://media.istockphoto.com/photos/colorful-sunset-at-davis-lake-picture-id1184692500?k=20&m=1184692500&s=612x612&w=0&h=7noTRS8UjiAVKU92eIhPG17PIWVh-kCmH5jKX5GOcdQ=");
            _imageUrls.add("https://images.unsplash.com/photo-1573155993874-d5d48af862ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFya3xlbnwwfHwwfHw%3D&w=1000&q=80");
            _imageUrls.add("https://images.pexels.com/photos/158028/bellingrath-gardens-alabama-landscape-scenic-158028.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
            _imageUrls.add("https://images.pexels.com/photos/158028/bellingrath-gardens-alabama-landscape-scenic-158028.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
            _imageUrls.add("https://images.pexels.com/photos/158028/bellingrath-gardens-alabama-landscape-scenic-158028.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
          }

            NewsfeedMultipleImageView(
                imageUrls: _imageUrls,
              marginLeft: 10.0,
              marginRight: 10.0,
              marginBottom: 10.0,
              marginTop: 10.0,
            )

        ```

## Support

For support, email ejazaamir2013@gmail.com

Made with 💝
