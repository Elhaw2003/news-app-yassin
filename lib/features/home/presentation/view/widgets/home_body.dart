import 'package:flutter/material.dart';
import 'package:news_app_yassin/core/widgets/spacing_widget.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/category_view_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const HeightSpacing(height: 16),
        CategoryViewWidget()
      ],
    );
  }
}
