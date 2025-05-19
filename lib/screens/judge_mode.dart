import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';
import 'package:harucourt/components/back_header.dart';
import 'package:harucourt/components/next_button.dart';
import 'package:harucourt/components/mode.button.dart';

class JudgeModePage extends StatefulWidget {
  const JudgeModePage({super.key});

  @override
  State<JudgeModePage> createState() => _JudgeModePageState();
}

class _JudgeModePageState extends State<JudgeModePage> {
  final List<ResponseItem> items = [
    ResponseItem(
      imagePath: 'assets/images/Ai.png',
      title: 'AI',
      detail: '나는 결정장애라서 mo대..',
    ),
    ResponseItem(
      imagePath: 'assets/images/Me.png',
      title: '나',
      detail: '판결은 내가 한다.',
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
                      "원하는 재판관을",
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
