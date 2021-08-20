import 'package:bagzz/ui/views/main/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';
import 'core/service/navigation/navigator_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();
  final navigationService = locator<NavigationService>();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
    navigatorKey: navigationService.navigatorKey,
    onGenerateRoute: StackedRouter().onGenerateRoute,
  ));
}
