import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:language/language.dart';

import 'HomeScreen.dart';
import 'MenuScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [Locale("en"), Locale("ta")],
      path: "assets/translation",
      fallbackLocale: Locale("en"),
      child: homepage()));
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DrawerController = ZoomDrawerController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      home: ZoomDrawer(
          controller: DrawerController,
          style: DrawerStyle.Style1,
          menuScreen: MenuScreen(),
          mainScreen: HomeScreen(DrawerController),
          borderRadius: 40.0,
          showShadow: true,
          angle: 0.0,
          backgroundColor: Colors.grey[300]!,
          openCurve: Curves.slowMiddle,
          closeCurve: Curves.decelerate),
    );
  }
}
