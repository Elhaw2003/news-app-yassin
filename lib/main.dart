import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/core/routing/router_generation_config.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        startLocale: const Locale('en'),
        child: const NewsAppYassin()
    ),
  );
}
class NewsAppYassin extends StatelessWidget {
  const NewsAppYassin({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerConfig: RouterGenerationConfig.routerGenerationConfig,
        );
      },
    );
  }
}

// flutter pub run easy_localization:generate --source-dir ./assets/translations
//flutter pub run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart
//Scaffold(
//             body: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("current langauge: ${context.locale.languageCode}"),
//                   Text(
//                     LocaleKeys.Authentication_name.tr(),
//                   ),
//                   SizedBox(height: 20,),
//                   Text(
//                     LocaleKeys.Authentication_email.tr(),
//                   ),
//                   SizedBox(height: 300,),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: IconButton
//                       (
//                         onPressed: changeLanguage, icon: Icon(Icons.change_circle_outlined)),
//                   )
//                 ],
//               ),
//             ),
//           )
