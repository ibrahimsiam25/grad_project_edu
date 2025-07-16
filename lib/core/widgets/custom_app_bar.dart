import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 35,
              child: IconButton(
                icon:const Icon(
                  Icons.arrow_back,
                  color: AppColors.blackLight,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyles.font16BlackMedium.copyWith(color: AppColors.blackLight),  
              ),
            ),
            const SizedBox(width: 35),
          ],
        ),
        const Divider(
          color: AppColors.gray,
          thickness: 1,
          height: 0,
        ),
      ],
    );
  }
}
