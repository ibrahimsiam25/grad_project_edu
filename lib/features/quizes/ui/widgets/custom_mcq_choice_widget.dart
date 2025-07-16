import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/helpers/constants.dart';
import 'package:grad_project/core/helpers/spacing.dart';
import 'package:grad_project/core/theme/app_text_styles.dart';
import 'package:grad_project/features/quizes/ui/cubit/quiz_cubit/quiz_cubit.dart';

import '../../../../core/theme/app_colors.dart';

class CustomMcqChoiceWidget extends StatelessWidget {
  final bool isSelected;
  final int index;
  final String choice;
  final int questionIndex;
  final String answerId;

  const CustomMcqChoiceWidget({
    super.key,
    required this.isSelected,
    required this.index,
    required this.choice,
    required this.questionIndex,
    required this.answerId,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            context.read<QuizCubit>().selectAnswer(
                  questionIndex,
                  answerId,
                );
          },
          child: Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.darkblue, width: 2),
                borderRadius: BorderRadius.circular(7)),
            child: isSelected
                ? Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: AppColors.darkblue,
                        border: Border.all(color: AppColors.darkblue, width: 2),
                        borderRadius: BorderRadius.circular(4)),
                  )
                : const SizedBox.shrink(),
          ),
        ),
        hGap(10),
        Expanded(
          child: Text(
            "${Constants.dummyChoices[index]} $choice",
            style: AppTextStyles.font13BlackSemiBold,
            maxLines: 10,
          ),
        ),
      ],
    );
  }
}
