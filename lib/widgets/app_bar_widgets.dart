import 'package:flutter/material.dart';

import '../constants/colors/app_colors.dart';
import '../constants/texts/app_texts.dart';

class AppBarWidgets extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidgets({Key key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.mainColor,
      title: const Text(AppTexts.flutterXylophone),
    );
  }
}
