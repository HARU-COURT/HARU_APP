import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  Widget socialLoginButton({
    required String iconPath,
    required String text,
    required Color backgroundColor,
    required BoxBorder? border,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: border,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath),
          Text(
            text,
            style: AppTextStyles.btn2.copyWith(color: AppColor.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 100, left: 24, right: 24),
                    child: Column(
                      children: [
                        Text(
                          "하루법정에 오신것을",
                          style: AppTextStyles.t1.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                        Text(
                          "환영합니다.",
                          style: AppTextStyles.t1.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                        Text(
                          '“하루에 한 번, 마음이 가벼워지는 시간”',
                          style: AppTextStyles.c1.copyWith(
                            color: AppColor.gray500,
                          ),
                        ),
                        SizedBox(height: 20),
                        Image.asset('assets/images/Bear.png'),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.gray300,
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Text(
                            "3초만에 하는 빠른 회원가입 🚀",
                            style: AppTextStyles.caption2.copyWith(
                              color: AppColor.black,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -12,
                          left: 0,
                          right: 0,
                          child: SvgPicture.asset('assets/icons/rectangle.svg'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        socialLoginButton(
                          iconPath: 'assets/icons/Kakao.svg',
                          text: '카카오로 시작하기',
                          backgroundColor: Color(
                            0xffFEE500,
                          ), // or AppColor.kakaoYellow
                          border: null,
                        ),
                        SizedBox(height: 8),
                        socialLoginButton(
                          iconPath: 'assets/icons/Google.svg',
                          text: '구글로 시작하기',
                          backgroundColor: AppColor.white,
                          border: Border.all(color: AppColor.gray200, width: 1),
                        ),
                      ],
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
