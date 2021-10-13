import "package:flutter/material.dart";
import "../../../../constants.dart";
import "skills_progress.dart";

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({
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
                'Skills',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Expanded(
              child: SkillsProgress(
                percent: 0.75,
                label: 'Flutter',
                circleColor: blueColor,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: SkillsProgress(
                percent: 0.9,
                label: 'Frontend',
                circleColor: primaryColor,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: SkillsProgress(
                percent: 0.8,
                label: 'Backend',
                circleColor: greenColor,
              ),
            ),
          ],
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
