import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_yassin/core/widgets/spacing_widget.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/category_view_widget.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/top_head_line_widget.dart';

import '../../controller/top_head_lines/top_head_lines_cubit.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
       HeightSpacing(height: 16),
        CategoryViewWidget(),
        HeightSpacing(height: 24),
        TopHeadLineWidget(),
        HeightSpacing(height: 24)
      ],
    );
  }
}
