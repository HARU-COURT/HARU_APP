import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';
import 'package:harucourt/components/back_header.dart';
import 'package:harucourt/components/next_button.dart';
import 'package:harucourt/widgets/response_version.dart';

class ResponseVersionPage extends StatefulWidget {
  const ResponseVersionPage({super.key});

  @override
  State<ResponseVersionPage> createState() => _ResponseVersionPageState();
}

class _ResponseVersionPageState extends State<ResponseVersionPage> {
  final List<ResponseItem> items = [
    ResponseItem(
      imagePath: 'assets/images/Fact.png',
      title: '팩트체크 모드',
      detail: '논리 ON, 감정 OFF',
    ),
    ResponseItem(
      imagePath: 'assets/images/Fun.png',
      title: '재미 모드',
      detail: '그냥 즐기시오',
    ),
    ResponseItem(
      imagePath: 'assets/images/Emotion.png',
      title: '위로 모드',
      detail: '울디마',
    ),
  ];

  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackHeader(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListView(
                  children: [
                    Text(
                      "원하는 응답버전을",
                      style: AppTextStyles.headline.copyWith(
                        color: AppColor.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.002,
                    ),
                    Text(
                      "선택해주세요.",
                      style: AppTextStyles.headline.copyWith(
                        color: AppColor.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    ...items.asMap().entries.map((entry) {
                      final index = entry.key;
                      final item = entry.value;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: ResponseVersionButton(
                          imagePath: item.imagePath,
                          title: item.title,
                          detail: item.detail,
                          isSelected: selectedIndex == index,
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(24),
          child: NextButton(text: "다음"),
        ),
      ),
    );
  }
}
