import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mingle_blog/screens/splash/splash.dart';
import 'package:mingle_blog/utils/app_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Mingle Blog',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
       darkTheme: AppTheme.darkTheme,
        home: const SplashScreen(),
      );
    });
  }
}
