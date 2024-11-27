import 'package:banners_app/widgets/home_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BannarsApp());
}

class BannarsApp extends StatelessWidget {
  const BannarsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              'عناصر التطبيق',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            Image.asset('assets/images/image1.jpg'),
          ],
        ),
        body: const HomeBody(),
      ),
    );
  }
}
