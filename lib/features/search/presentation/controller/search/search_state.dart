part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitialState extends SearchState {}
final class SearchLoadingState extends SearchState {}
final class SearchSuccessState extends SearchState {}
final class SearchFailureState extends SearchState {
  final String errorMessage;
  SearchFailureState({required this.errorMessage});
}
