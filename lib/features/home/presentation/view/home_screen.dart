import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_yassin/core/utilies/app_colors.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/home_body.dart';
import 'package:news_app_yassin/features/search/presentation/controller/language/language_cubit.dart';

import '../controller/top_head_lines/top_head_lines_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<TopHeadLinesCubit>(context).getTopHeadlines(
        index: 0,
        category: "sports".tr()
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white.withOpacity(0.98),
          appBar: AppBar(
            flexibleSpace: const HomeAppBar(),
          ),
          body: const HomeBody(),
        );
      },
    );
  }
}