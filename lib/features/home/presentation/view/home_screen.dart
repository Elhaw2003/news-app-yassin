import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/home_body.dart';

import '../controller/top_head_lines/top_head_lines_cubit.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<TopHeadLinesCubit>(context).getTopHeadlines();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const HomeAppBar(),
      ),
      body: const HomeBody(),
    );
  }
}