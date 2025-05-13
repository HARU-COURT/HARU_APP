import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';

class MoveButton extends StatelessWidget {
  final String text;
  const MoveButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 149),
        decoration: BoxDecoration(
          color: AppColor.primary1,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColor.primary5, width: 1.0),
        ),
        child: Text(
          text,
          style: AppTextStyles.btn1.copyWith(color: AppColor.primary5),
        ),
      ),
    );
  }
}
