import 'package:banners_app/pages/trans/add_trans.dart';
import 'package:banners_app/pages/trans/choose_trans.dart';
import 'package:banners_app/pages/trans/delete_trans.dart';
import 'package:banners_app/pages/trans/edit_trans.dart';
import 'package:banners_app/widgets/custom_button.dart';
import 'package:banners_app/widgets/image_widget.dart';
import 'package:banners_app/widgets/option_widget.dart';
import 'package:flutter/material.dart';

class TransPage extends StatelessWidget {
  const TransPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      '  ترانسات',
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
              const ImageWidget(imagePath: 'assets/images/trans.jpg'),
              const SizedBox(
                height: 15,
              ),
              OptionWidget(
                iconColor: Colors.blue,
                optionName: 'بحث عدد',
                iconName: Icons.search,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const ChooseTrans();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              OptionWidget(
                iconColor: Colors.green,
                optionName: 'اضافة ترانسات',
                iconName: Icons.add,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const AddTrans();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              OptionWidget(
                iconColor: Colors.orange,
                optionName: ' تعديل ترانسات',
                iconName: Icons.edit,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const EditTrans();
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
                optionName: 'حذف ترانسات',
                iconName: Icons.delete,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DeleteTrans();
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
