import 'package:go_router/go_router.dart';
import 'package:news_app_yassin/core/routing/app_routes.dart';

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
      ]
  );
}