import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  final List<String> items = ['A', 'B', 'C', 'D'];
  String selectedItem = 'A';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedItem,
      items: items.map(
        (String item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        },
      ).toList(),
      onChanged: (String? value) {
        setState(() {
          selectedItem = value!;
        });
      },
      icon: Icon(Icons.arrow_drop_down),
    );
  }
}
