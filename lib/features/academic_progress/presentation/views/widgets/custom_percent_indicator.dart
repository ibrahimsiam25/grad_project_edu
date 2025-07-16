import 'package:flutter/material.dart';
import 'package:grad_project/core/theme/app_colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomPercentIndicator extends StatelessWidget {
  const CustomPercentIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      clipBehavior: Clip.antiAlias,
      child: CircularPercentIndicator(
        radius: 50.0,
        lineWidth: 10.0,
        percent: .4,
        center: const Text(
          "40%",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryColordark,
          ),
        ),
        backgroundColor: Colors.transparent,
        fillColor: AppColors.lightGreen,
        circularStrokeCap: CircularStrokeCap.round,
        linearGradient: const LinearGradient(
          colors: [AppColors.primaryColordark, AppColors.primaryColorlight],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
