import 'package:go_router/go_router.dart';
import 'package:news_app_yassin/core/routing/app_routes.dart';
import 'package:news_app_yassin/features/article_details/presentation/view/article_details_screen.dart';
import 'package:news_app_yassin/features/search/presentation/view/search_screen.dart';

import '../../features/home/data/models/top_head_line_model.dart';
import '../../features/home/presentation/view/home_screen.dart';

class RouterGenerationConfig{
  static GoRouter routerGenerationConfig = GoRouter(
    initialLocation: AppRoutes.homeScreen,
      routes: [
        GoRoute(
            path: AppRoutes.homeScreen,
            name: AppRoutes.homeScreen,
            builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
            path: AppRoutes.searchScreen,
            name: AppRoutes.searchScreen,
            builder: (context, state) => const SearchScreen(),
        ),
        GoRoute(
            path: AppRoutes.articleDetailsScreen,
            name: AppRoutes.articleDetailsScreen,
            builder: (context, state) {
              final TopHeadLineModel topHeadLineModel = state.extra as TopHeadLineModel;
              return ArticleDetailsScreen(topHeadLineModel: topHeadLineModel);
            },
        ),
      ]
  );
}