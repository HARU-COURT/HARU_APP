import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';

class InputContent extends StatelessWidget {
  const InputContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 327,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.gray200, width: 1),
      ),
      child: TextFormField(
        style: AppTextStyles.body3.copyWith(color: AppColor.black),
        decoration: InputDecoration(
          fillColor: AppColor.white,
          hintText: '내용을 작성해주세요.',
          hintStyle: AppTextStyles.body3.copyWith(color: AppColor.gray400),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          isDense: true,
        ),
      ),
    );
  }
}
