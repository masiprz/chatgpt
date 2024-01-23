import 'package:chatgpt/bindings/bindings.dart';
import 'package:chatgpt/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat GPT',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const SplashScreen(),
      initialBinding: MyBindings(),
    );
  }
}


//final ConnectivityService _connectivityService = ConnectivityService();
// bool isUserconnected = false;
// _checkConnection() {
// _connectivityService.checkConnection().then((value) {
//  setState(() {
//    isUserconnected = value;
//  });
// });
//  }
