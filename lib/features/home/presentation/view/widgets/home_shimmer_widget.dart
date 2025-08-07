import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/core/utilies/app_colors.dart';
import 'package:news_app_yassin/core/widgets/custom_shimmer_container_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/widgets/spacing_widget.dart';

class HomeShimmerWidget extends StatelessWidget {
  const HomeShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: AppColors.greyColor.withOpacity(0.4),
        highlightColor: AppColors.white,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 32.w),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpacing(height: 16),
              const CustomShimmerContainerWidget(height: 206, width: double.infinity, radius: 10),
              const HeightSpacing(height: 16),
              const CustomShimmerContainerWidget(height: 40, width: double.infinity, radius: 10),
              const HeightSpacing(height: 12),
              const CustomShimmerContainerWidget(height: 12, width: 120, radius: 10),
              const HeightSpacing(height: 24),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const HeightSpacing(height: 24),
                  itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomShimmerContainerWidget(height: 15, width: 130, radius: 10),
                              HeightSpacing(height: 4),
                              CustomShimmerContainerWidget(height: 15, width: 130, radius: 10),
                              HeightSpacing(height: 5),
                              CustomShimmerContainerWidget(height: 15, width: 130, radius: 10),
                            ],
                          ),
                          CustomShimmerContainerWidget(height: 80, width: 112, radius: 10),
                        ],
                      );
                    },
                ),
              )
            ],
          ),
        ),
    );
  }
}
