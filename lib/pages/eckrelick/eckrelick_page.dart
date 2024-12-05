import 'package:banners_app/pages/eckrelick/add_eckrelick.dart';
import 'package:banners_app/pages/eckrelick/choose_eckrelick.dart';
import 'package:banners_app/pages/eckrelick/delete_eckrelick.dart';
import 'package:banners_app/pages/eckrelick/edit_eckrelick.dart';
import 'package:banners_app/widgets/custom_button.dart';
import 'package:banners_app/widgets/image_widget.dart';
import 'package:banners_app/widgets/option_widget.dart';
import 'package:flutter/material.dart';

class EckrelickPage extends StatelessWidget {
  const EckrelickPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '   شرايط اكريليك',
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
              const ImageWidget(imagePath: 'assets/images/ecklerik.jpg'),
              const SizedBox(
                height: 15,
              ),
              OptionWidget(
                iconColor: Colors.blue,
                optionName: 'بحث مقاسات',
                iconName: Icons.search,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const ChooseEckrelick();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              OptionWidget(
                iconColor: Colors.green,
                optionName: 'اضافة اكريليك',
                iconName: Icons.add,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const AddEckrelick();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              OptionWidget(
                iconColor: Colors.orange,
                optionName: ' تعديل اكريليك',
                iconName: Icons.edit,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const EditEckrelick();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              OptionWidget(
                iconColor: Colors.red,
                optionName: 'حذف اكريليك',
                iconName: Icons.delete,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DeleteEckrelick();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 100,
              ),
              CustomButton(
                label: 'رجوع',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
