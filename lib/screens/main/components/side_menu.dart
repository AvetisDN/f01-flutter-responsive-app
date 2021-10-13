import "package:flutter/material.dart";
import "../../../constants.dart";
import "side_menu/about.dart";
import "side_menu/code.dart";
import "side_menu/info_block.dart";
import "side_menu/skills.dart";
import "side_menu/social.dart";

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const InfoBlock(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: const [
                    AboutWidget(),
                    SkillsWidget(),
                    CodeWidget(),
                    SocialWidget()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
