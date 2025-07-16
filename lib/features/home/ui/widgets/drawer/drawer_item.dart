import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_project/core/flavors/flavors_functions.dart';
import 'package:grad_project/core/helpers/spacing.dart';
import 'package:grad_project/core/theme/app_colors.dart';
import 'package:grad_project/core/widgets/custom_red_grad_container.dart';

import '../../../../../core/theme/app_text_styles.dart';

class DrawerItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;
  final int index;
  const DrawerItem(
      {super.key,
      required this.iconPath,
      required this.title,
      required this.onTap,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomRedGradContainer(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        raduis: 10,
        decoration: _buildBoxDecoration(),
        child: Row(children: [
          SizedBox(
            height: 22,
            child: AspectRatio(
              aspectRatio: 1,
              child: SvgPicture.asset(
                iconPath,
                colorFilter:
                    const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
            ),
          ),
          hGap(12),
          Text(
            title,
            style: AppTextStyles.font16WhiteSemiBold,
          )
        ]),
      ),
    );
  }

  Decoration? _buildBoxDecoration() {
    if (FlavorsFunctions.isStudent()) {
      return index == 6
          ? BoxDecoration(
              color: AppColors.darkerBlue,
              borderRadius: BorderRadius.circular(10.r))
          : null;
    } else if (FlavorsFunctions.isAdmin()) {
      return index == 6
          ? BoxDecoration(
              color: AppColors.darkerBlue,
              borderRadius: BorderRadius.circular(10.r))
          : null;
    }
    return null;
  }
}
