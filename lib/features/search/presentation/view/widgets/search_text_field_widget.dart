import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_yassin/features/search/presentation/controller/search/search_cubit.dart';
import '../../../../../core/utilies/app_styles.dart';
import '../../../../../core/widgets/custom_text_field_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomTextFieldWidget(
          onFieldSubmitted: (value){
            BlocProvider.of<SearchCubit>(context).getSearch(query: value.toLowerCase());
          },
            hintText: "search_in".tr()),
        ),
        const WidthSpacing(width: 5),
        TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("cancel".tr(),style: AppTextStyles.cancelTextStyle,)
        )
      ],
    );
  }
}
