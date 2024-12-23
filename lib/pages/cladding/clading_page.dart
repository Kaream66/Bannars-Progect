import 'package:banners_app/pages/cladding/add_cladding.dart';
import 'package:banners_app/pages/cladding/choose_cladding.dart';
import 'package:banners_app/pages/cladding/delete_cladding.dart';
import 'package:banners_app/pages/cladding/edit_cladding.dart';
import 'package:banners_app/widgets/custom_button.dart';
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
              const ImageWidget(imagePath: 'assets/images/clading.jpg'),
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
                      return const ChooseCladding();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              OptionWidget(
                iconColor: Colors.green,
                optionName: 'اضافة كلادينج',
                iconName: Icons.add,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const AddCladding();
                    }),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              OptionWidget(
                iconColor: Colors.orange,
                optionName: ' تعديل كلادينج',
                iconName: Icons.edit,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const EditCladding();
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
                optionName: 'حذف كلادينج',
                iconName: Icons.delete,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DeleteCladding();
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
