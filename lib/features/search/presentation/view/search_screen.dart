import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_yassin/features/search/data/repos/search_repo_implementation.dart';
import 'package:news_app_yassin/features/search/presentation/controller/search/search_cubit.dart';
import 'package:news_app_yassin/features/search/presentation/view/widgets/search_body.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(searchRepo: SearchRepoImplementation()),
      child: const Scaffold(
        body:SearchBody(),
      ),
    );
  }
}
