import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../home/data/models/top_head_line_model.dart';
import '../../../data/repos/search_repo.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchRepo}) : super(SearchInitialState());
  final SearchRepo searchRepo ;
   List<TopHeadLineModel> searchList = [];
  getSearch({required String query})async{
    emit(SearchLoadingState());
    var result = await searchRepo.getSearch(query: query);
    return result.fold(
            (l){
          emit(SearchFailureState(errorMessage: l.errorMessage));
        },
            (r){
          searchList = r;
          emit(SearchSuccessState());
        }
    );
  }
}
