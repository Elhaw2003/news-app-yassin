import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/core/utilies/app_styles.dart';
import 'package:news_app_yassin/core/widgets/failure_widget.dart';
import 'package:news_app_yassin/core/widgets/loading_widget.dart';
import 'package:news_app_yassin/core/widgets/spacing_widget.dart';
import 'package:news_app_yassin/features/home/presentation/controller/top_head_lines/top_head_lines_cubit.dart';
import 'package:news_app_yassin/features/home/presentation/controller/top_head_lines/top_head_lines_state.dart';
class TopHeadLineWidget extends StatelessWidget {
  const TopHeadLineWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopHeadLinesCubit, TopHeadLinesState>(
  builder: (context, state) {
    var topHeadLinesCubit = BlocProvider.of<TopHeadLinesCubit>(context);
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 32.w),
      child: state is TopHeadLinesLoading?
          const LoadingWidget():
          state is TopHeadLinesFailure ?  FailureWidget(text: state.errorMessage,) :
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.sp),
            child: CachedNetworkImage(
              imageUrl: topHeadLinesCubit.topHeadLines[0].imageUrl ,
              placeholder: (context, url) => const LoadingWidget(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: double.infinity,
              height: 206.h,
              fit: BoxFit.fill,
            ),
          ),
          const HeightSpacing(height: 16),
          Text(
            topHeadLinesCubit.topHeadLines[0].title??"",
            style: AppTextStyles.titleNewsTextStyle,
          ),
          const HeightSpacing(height: 12),
          Row(
            children: [
              Text(
                "${topHeadLinesCubit.topHeadLines[0].author}   .",
                style: AppTextStyles.nameAndDateNews,
              ),
              Text(
                "   ${getFormattedDate(topHeadLinesCubit.topHeadLines[0].publishedAt)}",
                style: AppTextStyles.nameAndDateNews,
              ),
            ],
          ),
        ],
      ),
    );
  },
);
  }
}
String getFormattedDate(publishedAt) {
  if (publishedAt == null) return "date_not_available".tr();
  return DateFormat('MMMM d, y').format(publishedAt!);
}