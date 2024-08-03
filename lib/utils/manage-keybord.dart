import 'package:flutter/material.dart';
//for KeyBord
class keyBordUtil{
  static void hideKeyBord(BuildContext context){
    FocusScopeNode currentFocus = FocusScope.of(context);
    if(!currentFocus.hasPrimaryFocus){
      currentFocus.unfocus();
    }
  }
}