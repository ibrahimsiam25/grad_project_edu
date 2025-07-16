import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/app_assets.dart';
import '../../theme/app_colors.dart';
import '../svg_icon_button.dart';

class MentionIconButton extends StatelessWidget {
  const MentionIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(11),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r)),
      child: SvgIconButton(iconPath: Assets.imagesSvgsAtIcon, onPressed: () {}),
    );
  }
}
