import 'package:flutter/material.dart';
import 'package:flutter_academy_task2/core/constants/app_constant_colors.dart';
import 'package:flutter_academy_task2/core/constants/app_constant_string.dart';
import 'package:flutter_academy_task2/presentation/components/global_widgets/custom_button.dart';
import 'package:flutter_academy_task2/presentation/components/global_widgets/navigate_to.dart';
import 'package:flutter_academy_task2/presentation/screens/home_screen.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../core/constants/app_constant_assets_url.dart';
import '../components/login_widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController numberController = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  bool validateNumber = false;
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppConstantAssetsUrl.login),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                AppConstantString.loginString,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                  child: Form(
                    key: formKey,
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        validateNumber = value;
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.DROPDOWN,
                        leadingPadding: 0.0,
                        setSelectorButtonAsPrefixIcon: true,
                        trailingSpace: false,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      initialValue: number,
                      textFieldController: numberController,
                      formatInput: true,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      validator: (value) {
                        if (value!.isEmpty || !validateNumber) {
                          return "Invalid Number";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                LoginButton(formKey: formKey)
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: CustomButton(
                backgroundColor: AppConstantColor.googleButtonColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage:
                            AssetImage(AppConstantAssetsUrl.googleIcon),
                        backgroundColor:
                            AppConstantColor.socialMediaButtonIconsColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      AppConstantString.googleButtonText,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
                onPressed: () => navigateTo(
                    context: context, destination: HomeScreen()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                backgroundColor: AppConstantColor.facebookButtonColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.facebook,
                        color: AppConstantColor.socialMediaButtonIconsColor),
                    const SizedBox(width: 10),
                    Text(
                      AppConstantString.facebookButtonText,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
                onPressed: () => navigateTo(
                    context: context, destination: HomeScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}