import 'package:flutter/material.dart';
import 'package:grad_project/core/helpers/spacing.dart';

import '../theme/app_text_styles.dart';
import 'doctor_info_section.dart';

class ItemHeader extends StatelessWidget {
  const ItemHeader(
      {super.key,
      required this.name,
      required this.specialization,
      required this.date,
      required this.from,
      this.imageUrl});
     
  final String name;
  final String specialization;
  final String date;
  final String from;
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: DoctorInfoSection(
            name: name,
            specialization: specialization,
            imageUrl: imageUrl, 
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              date,
              style: AppTextStyles.font10GraySemiBold,
            ),
            vGap(4),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                from,
                style: AppTextStyles.font10GraySemiBold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
