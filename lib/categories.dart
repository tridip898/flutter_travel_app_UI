import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String imagePath;
  final String text;
  const Categories({Key? key, required this.imagePath, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.shade400,width: 2),
        ),
        child: Row(
          children: [
            Image.asset(imagePath,height: 50,width: 50,),
            SizedBox(width: 5,),
            Text(text,style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
