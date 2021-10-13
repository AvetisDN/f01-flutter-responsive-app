import "package:flutter/material.dart";
import 'components/articles_grid.dart';
import 'components/highlights.dart';
import "components/home_banner.dart";
import "../main/main_screen.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      HomeBanner(),
      HighLightsInfo(),
      ArticlesGrid(),
    ]);
  }
}
