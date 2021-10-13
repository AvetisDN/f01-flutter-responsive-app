import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "../../../../constants.dart";

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          color: Colors.white12,
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/linkedin.svg'),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/behance.svg'),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/dribble.svg'),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/github.svg'),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/twitter.svg'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
