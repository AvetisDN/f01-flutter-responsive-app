import "package:flutter/material.dart";

class AboutData extends StatelessWidget {
  const AboutData({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        Text(text),
      ],
    );
  }
}
