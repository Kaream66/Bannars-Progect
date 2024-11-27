import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key, required this.imagePath, required this.categoryName, required this.onTap, });
  final String imagePath;
  final String categoryName;
   final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(
        top: 30.0,
      ),
      child: Column(children: [
        GestureDetector(
          onTap: onTap ,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(22),
              //image: DecorationImage(image: AssetImage(imagePath))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          categoryName,
          style: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
