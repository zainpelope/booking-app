import 'package:booking/presentation/pages/discover/view.dart';
import 'package:booking/presentation/pages/onboarding/view.dart';
import 'package:booking/presentation/pages/welcome/login/view.dart';
import 'package:booking/presentation/pages/welcome/view.dart';
import 'package:booking/presentation/pages/welcome/welcome_done/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logging/logging.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    debugPrint(record.message);
  });
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
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Poppins',
          ),
          home: const LoginPage(),
          //home: const DiscoverPage(),
        );
      },
    );
  }
}
