import 'package:custom_themes_sample/controller/app_config_controller.dart';
import 'package:custom_themes_sample/utils/app_theme.dart';
import 'package:custom_themes_sample/view/launcher_screen/launcher_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => AppConfigController(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:  context.watch<AppConfigController>().isdark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: LauncherScreen(),
    );
  }
}
