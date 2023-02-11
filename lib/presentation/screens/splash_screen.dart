import 'dart:async';
import 'dart:ffi';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_academy_task2/core/constants/app_constant_assets_url.dart';
import 'package:flutter_academy_task2/core/constants/app_constant_string.dart';
import 'package:flutter_academy_task2/presentation/components/global_widgets/logo_layout.dart';
import 'package:flutter_academy_task2/presentation/screens/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/global_widgets/navigate_to.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => navigateTo(destination: const StartScreen(),context: context),
    );
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoLayout(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppConstantString.appTitle, style: Theme.of(context).textTheme.titleLarge),
                  Text(
                    AppConstantString.appSubTitle,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
