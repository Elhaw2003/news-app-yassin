import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../utilies/app_styles.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text.tr(),style: AppTextStyles.titleNewsTextStyle,),
    );
  }
}
