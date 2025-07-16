import 'package:flutter/material.dart';
import 'package:grad_project/core/widgets/decorated_input_border.dart';

import '../../generated/l10n.dart';
import '../helpers/localizationa.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.onSaved,
    this.prefixIcon,
    this.controller,
    this.maxLines,
    this.alignLabelWithHint,
    this.fillColor,
    this.contentPadding,
  });

  final String hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final int? maxLines;
  final Color? fillColor;
  final bool? alignLabelWithHint;
  final void Function(String?)? onSaved;
  final EdgeInsetsGeometry? contentPadding;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.textInputType == TextInputType.visiblePassword;
  }

  @override
  Widget build(BuildContext context) {
    bool isArabic = isArabicLocale(context);

    return TextFormField(
      obscureText: _isObscured,
      onSaved: widget.onSaved,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      maxLines: _isObscured ? 1 : widget.maxLines,
      textAlign: isArabic ? TextAlign.right : TextAlign.left,
      textDirection: isFirstCharArabic(widget.controller?.text ?? '')
          ? TextDirection.rtl
          : TextDirection.ltr,
      style: AppTextStyles.font10grayRegular,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).field_is_required;
        }
        return null;
      },
      decoration: InputDecoration(
        errorStyle: AppTextStyles.font10RedRegular,
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        alignLabelWithHint: widget.alignLabelWithHint,
        hintStyle: AppTextStyles.font10grayRegular,
        filled: true,
        fillColor: widget.fillColor ??
            Colors.transparent, // Make fillColor transparent
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        suffixIcon: _buildPrefixIcon(),
        contentPadding: widget.contentPadding ??
            const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
      ),
    );
  }

  bool isFirstCharArabic(String text) {
    if (text.isEmpty) return false;

    final firstChar = text.characters.first;

    // Checking if the first character is within the Arabic Unicode block
    return firstChar.codeUnitAt(0) >= 0x0600 &&
            firstChar.codeUnitAt(0) <= 0x06FF ||
        firstChar.codeUnitAt(0) >= 0x0750 &&
            firstChar.codeUnitAt(0) <= 0x077F ||
        firstChar.codeUnitAt(0) >= 0x08A0 &&
            firstChar.codeUnitAt(0) <= 0x08FF ||
        firstChar.codeUnitAt(0) >= 0xFB50 &&
            firstChar.codeUnitAt(0) <= 0xFDFF ||
        firstChar.codeUnitAt(0) >= 0xFE70 && firstChar.codeUnitAt(0) <= 0xFEFF;
  }

  Widget? _buildPrefixIcon() {
    if (widget.textInputType == TextInputType.emailAddress) {
      return const Icon(Icons.email_outlined, color: AppColors.gray);
    } else if (widget.textInputType == TextInputType.visiblePassword) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _isObscured = !_isObscured;
          });
        },
        child: Icon(
          _isObscured ? Icons.lock_outline : Icons.lock_open,
          color: AppColors.gray,
        ),
      );
    }
    return null;
  }

  DecoratedInputBorder buildBorder() {
    return DecoratedInputBorder(
      child: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      shadow: BoxShadow(
        color: Colors.black.withOpacity(0.1), // Adjust shadow color
        blurRadius: 10, // Softness of the shadow
        spreadRadius: 1, // Size of the shadow
        offset: const Offset(0, 2), // Position of shadow
      ),
    );
  }
}
