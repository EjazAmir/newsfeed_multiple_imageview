import 'package:flutter/material.dart';
import 'package:newsfeed_multiple_imageview/newsfeed_multiple_imageview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Newsfeed Multiple ImagesView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  final List<String> _imageUrls = [];

  @override
  void initState() {
    super.initState();

    _imageUrls.add(
        "https://media.istockphoto.com/photos/colorful-sunset-at-davis-lake-picture-id1184692500?k=20&m=1184692500&s=612x612&w=0&h=7noTRS8UjiAVKU92eIhPG17PIWVh-kCmH5jKX5GOcdQ=");
    _imageUrls.add(
        "https://images.unsplash.com/photo-1573155993874-d5d48af862ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFya3xlbnwwfHwwfHw%3D&w=1000&q=80");
    _imageUrls.add(
        "https://images.pexels.com/photos/158028/bellingrath-gardens-alabama-landscape-scenic-158028.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
    _imageUrls.add(
        "https://images.pexels.com/photos/158028/bellingrath-gardens-alabama-landscape-scenic-158028.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
    _imageUrls.add(
        "https://images.pexels.com/photos/158028/bellingrath-gardens-alabama-landscape-scenic-158028.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NewsfeedMultipleImageView(
          imageUrls: _imageUrls,
          marginLeft: 10.0,
          marginRight: 10.0,
          marginBottom: 10.0,
          marginTop: 10.0,
        ),
      ),
    );
  }
}
