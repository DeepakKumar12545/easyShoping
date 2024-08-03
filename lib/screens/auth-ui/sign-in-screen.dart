import 'package:e_commerce/screens/auth-ui/signup-screens.dart';
import 'package:e_commerce/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible){
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppContant.appSecondaryColor,
          title: Text("Sign in",style: TextStyle(
                  color: AppContant.apptextColor
                ),),
        ),
        body: Container(
          child: Column(
            children: [
              isKeyboardVisible
              ?Text("Welcome to my App")
              :Column(
                children: [
                 Container(
                  width: Get.width,
                  color: AppContant.appSecondaryColor,
                  child: Lottie.asset('assets/images/Animation.json',height: 250,fit: BoxFit.cover)),
              ],
             ),
             SizedBox(
              height: Get.height/20,
             ),
             Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  cursorColor: AppContant.appSecondaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email,
                    ),
                    contentPadding: EdgeInsets.only(left: 2.0,right: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                ),
              ),
             ),

             Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  cursorColor: AppContant.appSecondaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password,
                    ),
                    suffixIcon: Icon(Icons.visibility_off),
                    contentPadding: EdgeInsets.only(left: 2.0,right: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                ),
              ),
             ),
             Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerRight,
              child: Text("Forget Password",
              style: TextStyle(
                color: AppContant.appSecondaryColor,
                fontWeight: FontWeight.bold
              ),),
             ),
             SizedBox(
              height: Get.height/20,
             ),
             Material(
              child: Container(
                height: Get.height/18,
                width: Get.width/2,
                decoration: BoxDecoration(
                  color: AppContant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: TextButton(onPressed: (){}, child: Text("SIGN IN",style: TextStyle(
                  color: AppContant.apptextColor
                ),)),
              ),
             ),
              SizedBox(
              height: Get.height/20,
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont't have an account",
                style: TextStyle(
                  color: AppContant.appSecondaryColor
                ),),

                GestureDetector(
                   onTap: ()=>Get.offAll(SignupScreens()),
                  child: Text("Sign Up",
                  style: TextStyle(
                    color: AppContant.appMainColor,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
             )
            ],
          ),
        ),
      );
    });
  }
}