import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:galaxy_planets/screen/view/animPage.dart';
import 'package:galaxy_planets/screen/view/anim_data_page.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        initialRoute: '/',
        routes: {
          '/':(p0) => Anim_Page(),
          '+':(p0) => AnimData_Page(),
        },
      );
    },)
  );
}