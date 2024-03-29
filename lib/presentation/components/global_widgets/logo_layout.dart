import 'package:flutter/material.dart';

import '../../../core/constants/app_constant_assets_url.dart';

class LogoLayout extends StatelessWidget {
  const LogoLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppConstantAssetsUrl.logo,
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 0.1,
      fit: BoxFit.cover,
    );
  }
}