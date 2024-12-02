import 'package:banners_app/widgets/add_widget.dart';
import 'package:banners_app/widgets/choose_widget.dart';
import 'package:banners_app/widgets/custom_button.dart';
import 'package:banners_app/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class EditLed extends StatelessWidget {
  const EditLed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        '  تعديل  ليدات',
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
                const ImageWidget(imagePath: 'assets/images/led.jpg'),
                const SizedBox(
                  height: 35,
                ),
                const ChooseWidget(chooseName: 'أختر النوع'),
                const SizedBox(
                  height: 20,
                ),
                const ChooseWidget(chooseName: 'أختر اللون'),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 28.0),
                  child: Row(
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
                        ': العدد الحالي',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 35,),
                 const AddWidget(
                  text: 'تعديل العدد',
                  label: 'تعديل العدد',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(label: 'تعديل', onTap: () {}),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
