import 'package:flutter/material.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/home_body.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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