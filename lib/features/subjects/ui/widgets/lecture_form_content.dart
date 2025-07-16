import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grad_project/core/helpers/app_assets.dart';
import 'package:grad_project/core/helpers/localizationa.dart';
import 'package:grad_project/core/theme/app_text_styles.dart';
import 'package:grad_project/core/widgets/show_snak_bar.dart';
import 'package:grad_project/core/widgets/custom_text_and_icon_button.dart';
import 'package:grad_project/core/widgets/custom_text_button.dart';
import 'package:grad_project/features/subjects/logic/add_materials/add_materials_cubit.dart';
import 'package:grad_project/features/subjects/ui/manager/file_upload_cubit.dart';
import 'package:grad_project/core/widgets/dispaly_list.dart';
import 'package:grad_project/features/subjects/ui/widgets/files_list_view.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_text_form_field_and_icon.dart';
import '../../../../generated/l10n.dart';

import 'file_upload_dialog.dart';

class LectureFormContent extends StatefulWidget {
  const LectureFormContent({
    super.key,
    required this.id,
  });
  final int id;
  @override
  State<LectureFormContent> createState() => _LectureFormContentState();
}

class _LectureFormContentState extends State<LectureFormContent> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  int weekNumber = 0;
  int type = 0;
  late String title;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vGap(5),
          Text(
            S.of(context).lectureTitle,
            textAlign: TextAlign.start,
            style: AppTextStyles.font16DarkerBlueSemiBold,
          ),
          vGap(5),
          CustomTextFormFieldAndicon(
              hintText: S.of(context).lectureTitleHint,
              onSaved: (value) {
                title = value!;
              },
              icon: Assets.imagesSvgsLecTilte),
          vGap(12),
          Text(
            S.of(context).week,
            textAlign: TextAlign.start,
            style: AppTextStyles.font16DarkerBlueSemiBold,
          ),
          vGap(5),
          DisplayList(
            listValue: getLocalizedWeekNames(
                List.generate(14, (index) => index + 1), context),
            onSelected: (selectedWeek) {
              weekNumber = selectedWeek;
            },
          ),
          vGap(12),
          Text(
            S.of(context).type,
            textAlign: TextAlign.start,
            style: AppTextStyles.font16DarkerBlueSemiBold,
          ),
          vGap(5),
          DisplayList(
            listValue: [
              S.of(context).lecture,
              S.of(context).section,
              S.of(context).other
            ],
            onSelected: (selectedWeek) {
              type = selectedWeek;
            },
          ),
          vGap(12),
          CustomTextAndIconButton(
            width: double.infinity,
            style: AppTextStyles.font17WhiteSemiBold,
            text: S.of(context).uploadFiles,
            onTap: () {
              showFileUploadDialog(context);
            },
            icon: SvgPicture.asset(Assets.imagesSvgsPdfIcon),
            primaryButton: false,
          ),
          const FilesListView(),
          vGap(12),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomTextButton(
              primary: true,
              width: 100.w,
              fontSize: 18,
              text: S.of(context).publish,
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  final selectedFiles = context.read<FileUploadCubit>().state;
                  await callCubit(selectedFiles, context);
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> callCubit(
      List<PlatformFile> selectedFiles, BuildContext context) async {
    if (selectedFiles.isNotEmpty) {
      await context.read<AddMaterialsCubit>().addMaterials(
            id: widget.id,
            type: type,
            selectedFiles: selectedFiles,
            title: title,
            weekNumber: weekNumber,
          );
    } else {
      showSnakBar(
        context: context,
        message: S.of(context).pleaseUploadFiles,
      );
    }
  }
}

void showFileUploadDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext dialogContext) {
      return BlocProvider.value(
        value: context.read<FileUploadCubit>(),
        child: const Dialog(
          backgroundColor: Colors.transparent,
          child: FileUploadDialog(),
        ),
      );
    },
  );
}
