// @dart=2.9
import 'package:clock2/src/routes/app_pages.dart';
import 'package:clock2/src/shared/logger/logger_utils.dart';
import 'package:clock2/src/theme/theme_service.dart';
import 'package:clock2/src/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    enableLog: true,
    logWriterCallback: Logger.write,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    theme: Themes().lightTheme,
    darkTheme: Themes().darkTheme,
    themeMode: ThemeService().getThemeMode(),
  ));
}
