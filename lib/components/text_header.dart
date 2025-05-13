import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';

class TextHeader extends StatelessWidget {
  final String title;
  const TextHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 173),
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border(bottom: BorderSide(color: AppColor.gray100, width: 1.0)),
      ),
      child: Text(
        title,
        style: AppTextStyles.btn2.copyWith(color: AppColor.black),
      ),
    );
  }
}
