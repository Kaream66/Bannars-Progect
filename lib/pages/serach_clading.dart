import 'package:banners_app/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class SerachClading extends StatelessWidget {
  const SerachClading({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(      
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    '  بحث عن كلادينج',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/images/Backarrow.jpg'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ImageWidget(imagePath: 'assets/images/clading.jpg')
          ],
        ),
      ),
    );
  }
}
