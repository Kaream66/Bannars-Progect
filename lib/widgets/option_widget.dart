import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget(
      {super.key,
      required this.optionName,
      required this.iconName,
      required this.onTap, required this.iconColor});
  final String optionName;
  final IconData iconName;
  final VoidCallback onTap;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color:iconColor,
            height: 40,
            width: 40,
            child: Icon(
              iconName,
              size: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            optionName,
            style: const TextStyle(color: Colors.black, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
