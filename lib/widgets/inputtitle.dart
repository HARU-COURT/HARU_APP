import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';

class InputTitle extends StatelessWidget {
  final TextEditingController? controller;
  const InputTitle({this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.gray200, width: 1),
      ),
      child: TextFormField(
        style: AppTextStyles.body3.copyWith(color: AppColor.black),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          fillColor: AppColor.white,
          hintText: '고민 한 줄 소개(제목)',
          hintStyle: AppTextStyles.body3.copyWith(color: AppColor.gray400),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }
}
