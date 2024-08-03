import 'package:e_commerce/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: AppContant.appSecondaryColor,
        title: Text("Welcome to my App",style: TextStyle(
          color: AppContant.apptextColor
        ),),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: AppContant.appSecondaryColor,
              child: Lottie.asset('assets/images/Animation.json',),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text("Happy Shopping",
            style: TextStyle(
              // color: AppContant.apptextColor,
              fontSize: 22.0,
              fontWeight: FontWeight.bold
            ),),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                height: Get.height / 12,
                width: Get.width / 1.2,
                decoration: BoxDecoration(
                  color: AppContant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: TextButton.icon(
                  icon: Image.asset('assets/images/google.png',
                  width: 12,
                  height: 12,),
                  onPressed: (){}, label: Text("Sign in With Google"))
              ),
            ),

            SizedBox(
              height: Get.height/35,
            ),

            Material(
              child: Container(
                height: Get.height / 12,
                width: Get.width / 1.2,
                decoration: BoxDecoration(
                  color: AppContant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: TextButton.icon(
                  icon: Icon(Icons.email,
                  color: AppContant.apptextColor,),
                
                
                  onPressed: (){}, label: Text("Sign in With Email"))
              ),
            )
          ],
        ),
      ),
    );
  }
}