import 'package:erp_admin/view/home/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyApBPFU4ThK6mabTvk0TNA674HpigIiyec",
            appId: "1:841453124417:web:5148b5312888f12d8b7fc0",
            messagingSenderId: "841453124417",
            storageBucket: "erpadmin-c6704.appspot.com",
            projectId: "erpadmin-c6704"));
  }

  await Firebase.initializeApp();
  runApp(const GetMaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
