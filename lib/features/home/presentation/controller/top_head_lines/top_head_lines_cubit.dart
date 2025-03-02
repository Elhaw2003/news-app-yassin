import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:news_app_yassin/features/home/data/models/top_head_line_model.dart';
import 'package:news_app_yassin/features/home/data/repo/top_head_lines_repo/top_head_lines_repo.dart';
import 'package:news_app_yassin/features/home/presentation/controller/top_head_lines/top_head_lines_state.dart';

class TopHeadLinesCubit extends Cubit<TopHeadLinesState> {
  TopHeadLinesCubit({required this.topHeadLinesRepo}) : super(TopHeadLinesInitial());
  final TopHeadLinesRepo topHeadLinesRepo;
  List<TopHeadLineModel> topHeadLines = [];
  Future<void> getTopHeadlines({required String category})async{
     emit(TopHeadLinesLoading());
    var result = await topHeadLinesRepo.getTopHeadLines( category: category);
    return result.fold(
            (l){
              emit(TopHeadLinesFailure(errorMessage: l.errorMessage));
            },
            (r){
              topHeadLines = r;
              emit(TopHeadLinesSuccess());
            }
    );
  }
}
