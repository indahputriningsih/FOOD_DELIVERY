import 'package:flutter/material.dart';

class categoryButton extends StatelessWidget {
  categoryButton(
      {super.key, required this.images, required this.text, required this.ontap});

  String images;
  String text;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(15),
        splashColor: const Color(0xFFEF9F27),
        child: Container(
          margin: const EdgeInsets.all(20),
          height: 138,
          width: 100,
          child: Column(
            children: [Image.asset(images), const SizedBox(height: 8), Text(text)],
          ),
        ),
      ),
    );
  }
}
