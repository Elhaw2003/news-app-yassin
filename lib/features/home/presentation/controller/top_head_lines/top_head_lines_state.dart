abstract class TopHeadLinesState {}

final class TopHeadLinesInitial extends TopHeadLinesState {}
final class TopHeadLinesLoading extends TopHeadLinesState {}
final class TopHeadLinesSuccess extends TopHeadLinesState {}
final class TopHeadLinesFailure extends TopHeadLinesState {
  final String errorMessage;
  TopHeadLinesFailure({required this.errorMessage});
}
