import "package:flutter/material.dart";
import "../../../../constants.dart";

class SkillsProgress extends StatelessWidget {
  const SkillsProgress({
    Key? key,
    required this.percent,
    required this.label,
    required this.circleColor,
  }) : super(key: key);

  final double percent;
  final String label;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percent),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: circleColor,
                  strokeWidth: 6,
                  backgroundColor: Colors.black26,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + '%',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
