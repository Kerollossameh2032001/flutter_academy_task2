import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../global_widgets/navigate_to.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            if(formKey.currentState!.validate()){
              navigateTo(context: context, destination: HomeScreen());
            }
          },
          child: Text(
            "Login",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Text(
          "Or Connect with social media",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.black45),
        )
      ],
    );
  }
}