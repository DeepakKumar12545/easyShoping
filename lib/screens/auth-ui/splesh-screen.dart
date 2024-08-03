import 'dart:async';

import 'package:e_commerce/screens/auth-ui/welcome-screen.dart';
import 'package:e_commerce/screens/user-panel/main-screen.dart';
import 'package:e_commerce/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Get.offAll(()=>WelcomeScreen());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppContant.appSecondaryColor,
      appBar: AppBar(
        backgroundColor: AppContant.appSecondaryColor,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(110),
                child: Lottie.asset('assets/images/Animation.json'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: Get.width,
              alignment: Alignment.center,
              child: Text(AppContant.appPoweredBy,style: TextStyle(
                color: AppContant.apptextColor,
                fontSize: 12.0,fontWeight: FontWeight.bold,
              ),),
            )
          ],
        ),
      ),
    );
  }
}