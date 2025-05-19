import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';

class NextButton extends StatelessWidget {
  final String text;
  const NextButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 149),
        decoration: BoxDecoration(
          color: AppColor.primary3,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: AppTextStyles.btn2.copyWith(color: AppColor.black),
        ),
      ),
    );
  }
}
