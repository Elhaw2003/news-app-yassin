import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/features/home/data/models/category_model.dart';
import 'package:news_app_yassin/features/home/presentation/controller/categories/categories_cubit.dart';
import 'package:news_app_yassin/features/home/presentation/controller/top_head_lines/top_head_lines_cubit.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/category_item_widget.dart';

import '../../../../../core/widgets/spacing_widget.dart';

class CategoryViewWidget extends StatelessWidget {
  const CategoryViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = EasyLocalization.of(context)?.locale;
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      buildWhen: (previous, current) {
        return true; // إعادة بناء الواجهة دائمًا عند أي تحديث
      },
      builder: (context, state) {
        List<CategoryModel> categories = [
          CategoryModel(text: "sports"),
          CategoryModel(text: "technology"),
          CategoryModel(text: "business"),
          CategoryModel(text: "entertainment"),
        ];

        return SizedBox(
          height: 40.h,
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 32.w),
            child: ListView.separated(
              separatorBuilder: (context, index) => const WidthSpacing(width: 10),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return CategoryItemWidget(
                  index: index,
                  onTap: () {
                    BlocProvider.of<CategoriesCubit>(context).changeIndex(index);
                    BlocProvider.of<TopHeadLinesCubit>(context)
                        .getTopHeadlines(category: categories[index].text, index: index);
                  },
                  text: categories[index].text,
                );
              },
            ),
          ),
        );
      },
    );
  }
}