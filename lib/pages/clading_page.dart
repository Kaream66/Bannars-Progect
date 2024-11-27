import 'package:banners_app/pages/serach_clading.dart';
import 'package:banners_app/widgets/back_item.dart';
import 'package:banners_app/widgets/image_widget.dart';
import 'package:banners_app/widgets/option_widget.dart';
import 'package:flutter/material.dart';

class CladingPage extends StatelessWidget {
  const CladingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '  كلادينج',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
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
              ImageWidget(imagePath: 'assets/images/clading.jpg'),
              const SizedBox(
                height: 15,
              ),
              OptionWidget(
                optionName: 'بحث مقاسات',
                iconName: Icons.search,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SerachClading();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              OptionWidget(
                optionName: 'اضافة كلادينج',
                iconName: Icons.add,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              OptionWidget(
                optionName: ' تعديل كلادينج',
                iconName: Icons.edit,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              OptionWidget(
                optionName: 'اضافة كلادينج',
                iconName: Icons.delete,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              const BackItem(label: 'رجوع',),
            ],
          ),
        ),
      ),
    );
  }
}