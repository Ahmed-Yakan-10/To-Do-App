import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todoapp/constants.dart';
import 'package:device_preview/device_preview.dart';
import 'package:todoapp/services/theme_services.dart';
import 'package:todoapp/themes.dart';
import 'package:todoapp/views/home_view.dart';
import 'package:todoapp/views/notification_view.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => TODO(), // Wrap your app
      ),
    );

class TODO extends StatelessWidget {
  const TODO({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().theme,
      home: HomeView(),
    );
  }
}
