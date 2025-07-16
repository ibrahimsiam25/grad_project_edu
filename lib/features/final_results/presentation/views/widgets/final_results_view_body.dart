import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_project/core/helpers/spacing.dart';
import 'package:grad_project/core/widgets/custom_inner_screens_app_bar.dart';
import 'package:grad_project/features/final_results/presentation/views/widgets/year_header_widget.dart';
import 'package:grad_project/features/home/ui/widgets/title_text_widget.dart';
import 'package:grad_project/generated/l10n.dart';

class FinalResultsViewBody extends StatelessWidget {
  const FinalResultsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomInnerScreensAppBar(title: S.of(context).finalResults),
            TitleTextWidget(
              text: S.of(context).final_results_welcome_message,
            ),
            vGap(15),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return const YearHeaderWidget();
              },
              separatorBuilder: (BuildContext context, int index) {
                return vGap(15);
              },
              itemCount: 3,
            )
          ],
        ),
      ),
    );
  }
}
