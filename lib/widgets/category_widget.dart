import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  const CategoryWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.91,
      padding: const EdgeInsets.all(14),
      decoration: ShapeDecoration(
        color: const Color(0xFF02946B),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 0.58,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFF3F3F3),
          ),
          borderRadius: BorderRadius.circular(34.78),
        ),
      ),
      child: Center(
        child: Text(
         title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13.91,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w500,
            height: 0.09,
          ),
        ),
      ),
    );
  }
}
