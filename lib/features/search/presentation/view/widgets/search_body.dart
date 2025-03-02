import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/core/widgets/custom_article_view_widget.dart';
import 'package:news_app_yassin/core/widgets/loading_widget.dart';
import 'package:news_app_yassin/features/search/presentation/controller/search/search_cubit.dart';
import 'package:news_app_yassin/features/search/presentation/view/widgets/search_text_field_widget.dart';
import '../../../../../core/widgets/failure_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Column(
          children: [
            const HeightSpacing(height: 50),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 32.w),
              child: const SearchTextFieldWidget(),
            ),
            const HeightSpacing(height: 30),
            Expanded(
                child:
                  state is SearchLoadingState ?
                  const Center(child: LoadingWidget())
                   : state is SearchFailureState ?
                     Center(child: FailureWidget(text: state.errorMessage,)):
                     CustomArticleViewWidget(list:BlocProvider.of<SearchCubit>(context).searchList)
            ),
          ],
        );
      },
    );
  }
}
