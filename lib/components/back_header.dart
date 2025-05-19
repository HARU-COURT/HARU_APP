import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harucourt/app/config/app_color.dart';

class BackHeader extends StatelessWidget {
  const BackHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 14, bottom: 14, left: 24),
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border(bottom: BorderSide(color: AppColor.gray100, width: 1.0)),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/Back.svg', width: 24, height: 24),
        ],
      ),
    );
  }
}
