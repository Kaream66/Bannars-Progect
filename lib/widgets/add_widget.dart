import 'package:flutter/material.dart';

class AddWidget extends StatelessWidget {
  const AddWidget({
    super.key,
    required this.text, required this.label,
  });
  final String text;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              decoration:  InputDecoration(
                border:const UnderlineInputBorder(),
                labelText:label,
                
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            text,
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
// TextFormField(
//           decoration: const InputDecoration(
//             contentPadding: EdgeInsets.symmetric(
//               vertical: 32,
//               horizontal: 16,
//             ),
//             labelText: 'Search',
//             border: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.green),
//             ),
//           ),
//         ),