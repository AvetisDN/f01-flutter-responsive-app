import "package:flutter/material.dart";
import "about_data.dart";

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AboutData(
          title: 'Name',
          text: 'The Owl',
        ),
        SizedBox(
          height: 6,
        ),
        AboutData(
          title: 'Place',
          text: 'Nest',
        ),
        SizedBox(
          height: 6,
        ),
        AboutData(
          title: 'Age',
          text: 'undefined',
        ),
        Divider(),
      ],
    );
  }
}
