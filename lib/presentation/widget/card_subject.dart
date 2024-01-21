import 'package:flutter/material.dart';

class CardSubject extends StatelessWidget {
  const CardSubject({
    super.key,
    required this.title,
    required this.textStyle,
    required this.colorOne,
    required this.colorTwo,
  });
  final String title;
  final TextStyle textStyle;
  final Color colorOne;
  final Color colorTwo;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [colorOne, colorTwo]),
      ),
      child: Center(child: Text(title, style: textStyle)),
    );
  }
}
