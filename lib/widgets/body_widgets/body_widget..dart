import 'package:flutter/material.dart';

import '../../constants/colors/app_colors.dart';
import '../custom_container.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: const [
        CustomContainer(notaNumber: '1', color: AppColors.redDark),
        CustomContainer(notaNumber: '2', color: AppColors.yellowDark),
        CustomContainer(notaNumber: '3', color: AppColors.yellow),
        CustomContainer(notaNumber: '4', color: AppColors.green),
        CustomContainer(notaNumber: '5', color: AppColors.greenDark),
        CustomContainer(notaNumber: '6', color: AppColors.blueDark),
        CustomContainer(notaNumber: '7', color: AppColors.pink),
      ]),
    );
  }
}
