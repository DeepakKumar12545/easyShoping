import 'package:e_commerce/screens/auth-ui/sign-in-screen.dart';
import 'package:e_commerce/screens/auth-ui/splesh-screen.dart';
import 'package:e_commerce/screens/user-panel/main-screen.dart';

import 'package:flutter/material.dart';


import 'screens/auth-ui/signup-screens.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignupScreens()
    );
  }
}

