import 'package:banners_app/widgets/choose_widget.dart';
import 'package:banners_app/widgets/custom_button.dart';
import 'package:banners_app/widgets/image_widget.dart';
import 'package:flutter/material.dart';
class ChooseTrans extends StatelessWidget {
  const ChooseTrans({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '  بحث عن ترانسات',
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
              const ImageWidget(imagePath: 'assets/images/trans.jpg'),
              const SizedBox(
                height: 35,
              ),
              const ChooseWidget(chooseName: 'اختر السعة'),
              const SizedBox(
                height: 35,
              ),
             
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '1234',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ':العدد ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              CustomButton(
                label: 'بحث',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}