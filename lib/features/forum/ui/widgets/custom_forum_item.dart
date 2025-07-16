import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_project/features/forum/data/models/get_all_questions_response_model.dart';
import 'package:grad_project/features/forum/ui/widgets/button_row.dart';
import 'package:grad_project/features/forum/ui/widgets/custom_question_forum_item.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_colors.dart';

class CustomForumItem extends StatelessWidget {
  const CustomForumItem({super.key, this.questionModel});
  final QuestionModel? questionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          CustomQuestionForumItem(questionModel: questionModel),
          vGap(8),
          ButtonRow(
            questionModel: questionModel,
          ),
          const Divider(
            endIndent: 80,
            indent: 80,
            color: AppColors.gray,
            thickness: 2,
            height: 16,
          )
        ],
      ),
    );
  }
}
