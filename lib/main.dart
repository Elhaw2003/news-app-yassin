import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/core/routing/router_generation_config.dart';
import 'package:news_app_yassin/features/home/data/repo/top_head_lines_repo/top_head_lines_repo_implementation.dart';
import 'package:news_app_yassin/features/home/presentation/controller/top_head_lines/top_head_lines_cubit.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        startLocale: const Locale('en'),
        child: BlocProvider(
           create: (context) => TopHeadLinesCubit(topHeadLinesRepo: TopHeadLinesRepoImplementation()),
            child: const NewsAppYassin())
    ),
  );
}
class NewsAppYassin extends StatelessWidget {
  const NewsAppYassin({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerConfig: RouterGenerationConfig.routerGenerationConfig,
        );
      },
    );
  }
}
