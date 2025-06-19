import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harucourt/components/bottom_tab_bar.dart';
import 'package:harucourt/components/text_header.dart';

class Mypage extends StatelessWidget {
  final String name;
  const Mypage({required this.name, super.key});

  void _launchFaq() async {
    final Uri url = Uri.parse(
      "https://polished-ballcap-a54.notion.site/1d76ec6e948b8098af3adce11dbcef56?source=copy_link",
    );
    if (await canLaunchUrl(url)) await launchUrl(url);
  }

  void _launchTerms() async {
    final Uri url = Uri.parse(
      "https://polished-ballcap-a54.notion.site/1d76ec6e948b8078b7a3d8c8a5a5f25d?source=copy_link",
    );
    if (await canLaunchUrl(url)) await launchUrl(url);
  }

  Widget _linkRow(String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: AppTextStyles.body2.copyWith(color: AppColor.black),
              ),
            ),
            SvgPicture.asset('assets/icons/Go.svg'),
          ],
        ),
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
                          name,
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
                        _linkRow("이용가이드", _launchFaq),
                        _linkRow("자주 묻는 질문", _launchFaq),
                        _linkRow("이용약관", _launchTerms),
                        _linkRow("개인정보처리방침", _launchTerms),
                      ],
                    ),
                    Divider(thickness: 1, color: AppColor.gray100, height: 50),
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
                        GestureDetector(
                          onTap: () async {
                            final Uri url = Uri.parse(
                              "http://pf.kakao.com/_xcIWwn",
                            );
                            if (await canLaunchUrl(url)) {
                              await launchUrl(
                                url,
                                mode: LaunchMode.externalApplication,
                              );
                            } else {
                              throw '카카오톡 채널을 열 수 없습니다';
                            }
                          },
                          child: Container(
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
                              children: [
                                SvgPicture.asset('assets/icons/Kakao.svg'),
                                Expanded(
                                  child: Text(
                                    "하루법정 카카오톡 채널 문의하기",
                                    style: AppTextStyles.btn3.copyWith(
                                      color: AppColor.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(width: 24),
                              ],
                            ),
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
