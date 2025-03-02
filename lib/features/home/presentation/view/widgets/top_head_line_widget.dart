import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_yassin/features/home/presentation/controller/top_head_lines/top_head_lines_state.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/first_item_top_head_line_widget.dart';
import '../../../../../core/widgets/custom_article_view_widget.dart';
import '../../../../../core/widgets/failure_widget.dart';
import '../../../../../core/widgets/loading_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../controller/top_head_lines/top_head_lines_cubit.dart';

class TopHeadLineWidget extends StatelessWidget {
  const TopHeadLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var topHeadLinesCubit = BlocProvider.of<TopHeadLinesCubit>(context);
    return BlocBuilder<TopHeadLinesCubit, TopHeadLinesState>(
      builder: (context, state) {
        return
        Expanded(
          child: state is TopHeadLinesLoading ?
          const Center(child: LoadingWidget()) :
          state is TopHeadLinesFailure ?
          Center(child: FailureWidget(text: state.errorMessage,))   :
          Column(
            children: [
               FirstItemTopHeadLineWidget(topHeadLines: topHeadLinesCubit.topHeadLines),
              const HeightSpacing(height: 24),
              Expanded(
                child: CustomArticleViewWidget(
                  list: topHeadLinesCubit.topHeadLines,
                ),
              ),
            ],
          ),
        ) ;
      },
    );
  }
}
