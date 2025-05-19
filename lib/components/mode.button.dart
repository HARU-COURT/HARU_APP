import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';

class ResponseItem {
  final String imagePath;
  final String title;
  final String detail;

  ResponseItem({
    required this.imagePath,
    required this.title,
    required this.detail,
  });
}

class ResponseVersionButton extends StatelessWidget {
  final String imagePath;
  final String title;
  final String detail;
  final bool isSelected;
  final VoidCallback onTap;

  const ResponseVersionButton({
    super.key,
    required this.imagePath,
    required this.title,
    required this.detail,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.primary2 : AppColor.gray50,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(imagePath),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.body2.copyWith(color: AppColor.black),
                  ),
                  Text(
                    detail,
                    style: AppTextStyles.caption1.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
