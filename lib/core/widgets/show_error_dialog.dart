import 'package:flutter/material.dart';
import 'package:grad_project/core/helpers/localizationa.dart';
import 'package:grad_project/core/theme/app_text_styles.dart';
import 'package:grad_project/generated/l10n.dart';
import 'package:translator/translator.dart';

Future<void> showErrorDialog(BuildContext context, String message,
    {bool doublePop = false, bool translate = true}) async {
  final translator = GoogleTranslator();

  if (translate) {
    if (isArabicLocale(context)) {
      final translation =
          await translator.translate(message, from: 'en', to: 'ar');
      message = translation.text;
    }
  }

  if (context.mounted) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          message,
          style: AppTextStyles.font16BlackSemiBold,
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              if (doublePop) {
                Navigator.of(context).pop();
              }
            },
            child: Text(
              S.of(context).ok,
              style: AppTextStyles.font16BlackSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
