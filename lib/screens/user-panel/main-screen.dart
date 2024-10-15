import 'package:e_commerce/utils/app-constant.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      appBar: AppBar(
        backgroundColor: AppContant.appMainColor,
        title: Text(AppContant.appName),
        centerTitle: false,
      ),
    );
  }
}
