import "package:flutter/material.dart";
import "../../../../constants.dart";
import "code_progress.dart";

class CodeWidget extends StatelessWidget {
  const CodeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                'Coding',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ],
        ),
        const CodeProgress(
          percent: .95,
          label: 'JavaScript',
          circleColor: primaryColor,
        ),
        const CodeProgress(
          percent: .72,
          label: 'Dart',
          circleColor: blueColor,
        ),
        const CodeProgress(
          percent: .83,
          label: 'NodeJS',
          circleColor: greenColor,
        ),
        const CodeProgress(
          percent: .89,
          label: 'HTML',
          circleColor: redColor,
        ),
        const CodeProgress(
          percent: .92,
          label: 'CSS',
          circleColor: purpleColor,
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const Divider(),
        const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }
}
