import 'package:flutter/material.dart';

class BackItem extends StatelessWidget {
  const BackItem({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        child:  Padding(
          padding:const  EdgeInsets.only(top: 8.0),
          child: Text(
            textAlign: TextAlign.center,
           label ,
            style:const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
