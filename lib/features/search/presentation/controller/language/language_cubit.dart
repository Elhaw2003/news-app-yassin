import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app_yassin/core/utilies/language_const.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());
   changeLanguage(Locale local) {
    LanguageConsts.currentLanguage = local.languageCode;
    emit(ChangeLanguage());
  }
}
