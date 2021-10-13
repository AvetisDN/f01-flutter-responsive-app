import "package:flutter/material.dart";
import "../../../../constants.dart";

class CodeProgress extends StatelessWidget {
  const CodeProgress({
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
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percent),
      duration: defaultDuration,
      builder: (context, double value, child) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text((percent * 100).toInt().toString() + '%'),
            ],
          ),
          const SizedBox(
            height: defaultPadding * .25,
          ),
          LinearProgressIndicator(
            value: value,
            color: circleColor,
            backgroundColor: Colors.black26,
          ),
          const SizedBox(
            height: defaultPadding * .75,
          ),
        ],
      ),
    );
  }
}
