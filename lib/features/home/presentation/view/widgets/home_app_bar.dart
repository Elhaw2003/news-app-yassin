import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app_yassin/core/routing/app_routes.dart';
import 'package:news_app_yassin/core/utilies/app_colors.dart';
import 'package:news_app_yassin/core/utilies/app_styles.dart';

import '../../../../search/presentation/controller/language/language_cubit.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: AppColors.lightBlueColor,
      toolbarHeight: 120.h,
      title: Text(
        "explore".tr(),
        style: AppTextStyles.primaryColorW600Size32,
      ),
      actions: [
        IconButton(
            onPressed: (){
             GoRouter.of(context).pushNamed(AppRoutes.searchScreen);
            },
            icon: Icon(Icons.search,size: 20.sp,color: AppColors.primaryColor,)
        ),
        IconButton(
            onPressed: (){
              Locale newLocale = context.locale.languageCode == "en" ? const Locale("ar") : const Locale("en");
              context.setLocale(newLocale);  // Change the locale in UI
              BlocProvider.of<LanguageCubit>(context).changeLanguage(newLocale);
            },
            icon: Icon(Icons.language,size: 20.sp,color: AppColors.primaryColor,)
        )
      ],
    );
  }
}
