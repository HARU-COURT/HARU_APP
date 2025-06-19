import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';
import 'package:harucourt/components/back_header.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harucourt/components/bottom_tab_bar.dart';
import 'package:harucourt/components/text_header.dart';

class Mypage extends StatelessWidget {
  final String name;
  const Mypage({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Column(
          children: [
            TextHeader(title: "내 정보"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: AppColor.gray200,
                            image: DecorationImage(
                              image: AssetImage("assets/images/profile.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Text(
                          "송윤서",
                          style: AppTextStyles.headline.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.47,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: AppColor.gray200,
                              width: 0.5,
                            ),
                          ),
                          child: Text(
                            "수정",
                            style: AppTextStyles.caption1.copyWith(
                              color: AppColor.gray700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 13.5),
                            decoration: BoxDecoration(
                              color: AppColor.primary2,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "유죄",
                                      style: AppTextStyles.body3.copyWith(
                                        color: AppColor.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.02,
                                    ),
                                    Text(
                                      "0",
                                      style: AppTextStyles.footnote.copyWith(
                                        color: AppColor.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "무죄",
                                      style: AppTextStyles.body3.copyWith(
                                        color: AppColor.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.02,
                                    ),
                                    Text(
                                      "0",
                                      style: AppTextStyles.footnote.copyWith(
                                        color: AppColor.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "보류",
                                      style: AppTextStyles.body3.copyWith(
                                        color: AppColor.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.02,
                                    ),
                                    Text(
                                      "0",
                                      style: AppTextStyles.footnote.copyWith(
                                        color: AppColor.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      children: [
                        Image.asset("assets/images/Bear2.png"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "고민 접수",
                              style: AppTextStyles.body2.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                            Text(
                              "내 고민을 바로 적어보세요.",
                              style: AppTextStyles.footnote.copyWith(
                                color: AppColor.gray500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.34,
                        ),
                        SvgPicture.asset('assets/icons/Go.svg'),
                      ],
                    ),
                    Divider(thickness: 5, color: AppColor.gray100, height: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "도움말",
                          style: AppTextStyles.headline.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "이용가이드",
                              style: AppTextStyles.body2.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Go.svg'),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "자주 묻는 질문",
                              style: AppTextStyles.body2.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Go.svg'),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "이용약관",
                              style: AppTextStyles.body2.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Go.svg'),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "개인정보처리방침",
                              style: AppTextStyles.body2.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                            SvgPicture.asset('assets/icons/Go.svg'),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColor.gray100, // 또는 AppColor.gray100
                      height: 50,
                    ),
                    Column(
                      children: [
                        Text(
                          "궁금한 점이 있다면 언제든 문의해 주세요!",
                          style: AppTextStyles.caption2.copyWith(
                            color: AppColor.gray800,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 13,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffFEE500),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/Kakao.svg'),
                              Text(
                                "하루법정 카카오톡 채널 문의하기",
                                style: AppTextStyles.btn3.copyWith(
                                  color: AppColor.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomTabBar(),
      ),
    );
  }
}
