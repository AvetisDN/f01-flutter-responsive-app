import 'package:flutter/material.dart';
import '../../../models/articles.dart';
import '../../../responsive.dart';

import '../../../constants.dart';
import 'article_card.dart';

class ArticlesGrid extends StatelessWidget {
  const ArticlesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Articles",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding),
        const Responsive(
          mobile: ArticleGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ArticleGridView(crossAxisCount: 2),
          tablet: ArticleGridView(childAspectRatio: 1.1),
          desktop: ArticleGridView(),
        )
      ],
    );
  }
}

class ArticleGridView extends StatelessWidget {
  const ArticleGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demoArticles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ArticleCard(
        article: demoArticles[index],
      ),
    );
  }
}
