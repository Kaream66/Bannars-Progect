import 'package:banners_app/widgets/add_widget.dart';
import 'package:banners_app/widgets/custom_button.dart';
import 'package:banners_app/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class AddTrans extends StatelessWidget {
  const AddTrans({super.key});

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
                        '  اضافة  ترانسات',
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
                const AddWidget(
                  text: 'أضف السعة',
                  label: 'أضف السعة',
                ),
                const SizedBox(
                  height: 20,
                ),
                const AddWidget(
                  text: 'أضف العدد',
                  label: 'أضف العدد',
                ),
                const SizedBox(
                  height: 80,
                ),
                CustomButton(label: 'أضف', onTap: () {}),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
