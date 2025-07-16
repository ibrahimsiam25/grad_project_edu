import 'package:escape_parent_padding/escaped.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:escape_parent_padding/escapable_padding.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_project/core/helpers/constants.dart';
import 'package:grad_project/core/helpers/spacing.dart';
import 'package:grad_project/core/theme/app_colors.dart';
import 'package:grad_project/core/theme/app_text_styles.dart';
import 'package:grad_project/features/map/data/model/route_response.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:translator/translator.dart';

import '../../../../core/widgets/custom_inner_screens_app_bar.dart';
import '../../../../generated/l10n.dart';

class InstructionsViewBody extends StatelessWidget {
  final List<RouteInstruction> instructions;
  const InstructionsViewBody({super.key, required this.instructions});
  Future<String> translateInstruction(String instruction) async {
    final translator = GoogleTranslator();
    String translatedMessage = "";

    final translation =
        await translator.translate(instruction, from: 'en', to: 'ar');
    translatedMessage = translation.text;
    return translatedMessage;
  }

  @override
  Widget build(BuildContext context) {
    return EscapablePadding(
      padding: EdgeInsets.only(
        top: 10.h,
        left: 16.w,
        right: 16.w,
      ),
      builder: (BuildContext context, List<Widget> children) {
        return Column(
          children: [
            ...children,
          ],
        );
      },
      children: [
        CustomInnerScreensAppBar(
          title: S.of(context).instructions,
        ),
        vGap(10),
        Escaped(
          child: Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: instructions.length,
              itemBuilder: (context, index) {
                final step = instructions[index];
                return Card(
                  elevation: 4,
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: Constants.whiteGrad,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 6.0,
                          spreadRadius: 1.0,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                      leading: CircleAvatar(
                        backgroundColor: AppColors.darkblue,
                        radius: 20.r,
                        child: Text(
                          '${index + 1}',
                          style: AppTextStyles.font14WhiteBold,
                        ),
                      ),
                      title: FutureBuilder<String>(
                        future: translateInstruction(step.instruction),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data!,
                              style: AppTextStyles.font14BlackBold,
                            );
                          }
                          return Skeletonizer(
                            enabled: true,
                            child: Text(
                              'dasdasdasddas',
                              style: AppTextStyles.font14BlackBold,
                            ),
                          );
                        },
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (step.name.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                '${S.of(context).street}: ${step.name}',
                                style: AppTextStyles.font11BlackMedium,
                              ),
                            ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.h),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.directions,
                                  color: AppColors.darkblue,
                                  size: 16.w,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  '${S.of(context).distance}: ${step.distance.toStringAsFixed(1)} ${S.of(context).meter}',
                                  style: AppTextStyles.font11BlackMedium,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.h),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: AppColors.darkblue,
                                  size: 16.w,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  '${S.of(context).duration}: ${(step.duration / 60).toStringAsFixed(1)} ${S.of(context).min}',
                                  style: AppTextStyles.font11BlackMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
