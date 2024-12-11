import 'package:banners_app/widgets/add_widget.dart';
import 'package:banners_app/widgets/choose_widget.dart';
import 'package:banners_app/widgets/custom_button.dart';
import 'package:banners_app/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class AddCladding extends StatelessWidget {
  const AddCladding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [Center(
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
                        '  اضافة  كلادينج',
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
                const ImageWidget(imagePath: 'assets/images/clading.jpg'),
                const SizedBox(
                  height: 35,
                ),
                const AddWidget(
                  text: 'أضف خامة',
                  label: 'أضف الخامة',
                ),
                const SizedBox(
                  height: 20,
                ),
                const AddWidget(
                  text: 'أضف لون',
                  label: 'أضف اللون',
                ),
                const SizedBox(
                  height: 15,
                ),
                const ChooseWidget(chooseName: 'اضف ملمس السطح'),
                const AddWidget(
                  text: 'أضف مقاسات',
                  label: 'أضف مقاسات',
                ),
                const AddWidget(
                 
                  text: 'أضف العدد',
                  label: 'أضف العدد',
                ),
               const SizedBox(
                  height: 20,
                ),
                CustomButton(label: 'أضف', onTap: () {}),
              ],
            ),
          ),]
        ),
      ),
    );
  }
}
