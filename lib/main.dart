import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/config/routes/routes.dart';
import 'package:social_media_app/config/theme/app_theme.dart';
import 'package:social_media_app/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: routes,
            title: 'Socially',
            theme: theme(),
          );
        });
  }
}
