import 'package:banners_app/widgets/drop_down_button.dart';
import 'package:flutter/material.dart';

class ChooseWidget extends StatelessWidget {
  const ChooseWidget({super.key, required this.chooseName});
  final String chooseName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const DropDownButton(),
          const SizedBox(
            width: 50,
          ),
          Text(
            chooseName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
