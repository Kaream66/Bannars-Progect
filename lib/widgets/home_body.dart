import 'package:banners_app/pages/clading_page.dart';
import 'package:banners_app/pages/eckrelick_page.dart';
import 'package:banners_app/pages/led_page.dart';
import 'package:banners_app/pages/trans_page.dart';
import 'package:banners_app/widgets/category.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LedPage();
                      },),);
                    },
                    imagePath: 'assets/images/led.jpg',
                    categoryName: 'ليدات'),
                const SizedBox(
                  width: 20,
                ),
                Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CladingPage();
                      },),);
                    },
                    imagePath: 'assets/images/clading.jpg',
                    categoryName: 'كلادينج')
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Category(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const TransPage();
                          },
                        ),
                      );
                    },
                    imagePath: 'assets/images/trans.jpg',
                    categoryName: 'ترانسات'),
                const SizedBox(
                  width: 20,
                ),
                Category(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const EckrelickPage();
                          },
                        ),
                      );
                    },
                    imagePath: 'assets/images/ecklerik.jpg',
                    categoryName: 'شرايط اكريليك')
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
        
        ],
      ),
    );
  }
}
