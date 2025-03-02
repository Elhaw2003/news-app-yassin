import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());

  int index = 0;

  void changeIndex(int index){
    this.index = index;
    emit(CategoriesChangeState());
  }

}
