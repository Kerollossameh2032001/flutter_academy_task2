import 'package:flutter/material.dart';
import 'package:flutter_academy_task2/core/constants/app_constant_assets_url.dart';
import 'package:flutter_academy_task2/core/constants/app_constant_string.dart';
import 'package:flutter_academy_task2/presentation/screens/login_screen.dart';

import '../components/global_widgets/custom_button.dart';
import '../components/global_widgets/logo_layout.dart';
import '../components/global_widgets/navigate_to.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppConstantAssetsUrl.start),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.5),
            const LogoLayout(),
            const SizedBox(height: 15),
            Text(
              AppConstantString.startWelcomeMessage,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              AppConstantString.continueStartWelcomeMessage,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            Text(
              AppConstantString.startDescription,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () => navigateTo(
                  context: context,
                  destination: LoginScreen(),
                ),
                child: Text("Get Started",
                    style: Theme.of(context).textTheme.labelMedium),
              ),
            )
          ],
        ),
      ),
    );
  }
}
