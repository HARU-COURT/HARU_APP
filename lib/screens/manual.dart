import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';
import 'package:harucourt/components/back_header.dart';

class ManualPage extends StatefulWidget {
  const ManualPage({super.key});

  @override
  State<ManualPage> createState() => _ManualPageState();
}

class _ManualPageState extends State<ManualPage> {
  final List<String> guideText = [
    "1. 자신의 고민을 성심껏 작성합니다. (감정, 상황 등)",
    "2. 응답 버전과 판결 여부를 선택 후 재판접수를 완료합니다.",
    "3. 판사, 검사, 변호사가 재판을 진행합니다.",
    "4. 재판을 통해 판결을 내린 후 결과를 알려줍니다.",
  ];

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Column(
          children: [
            BackHeader(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.065),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ListView(
                  children: [
                    Text(
                      "하루법정",
                      style: AppTextStyles.t1.copyWith(color: AppColor.black),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '“소중한 고민을 알려주시면 재판을 통해 해결해드려요”',
                      style: AppTextStyles.c2.copyWith(color: AppColor.black),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset('assets/images/Bear_2D.png'),
                    Text(
                      "사용 가이드",
                      style: AppTextStyles.t3.copyWith(color: AppColor.black),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    ...guideText.map(
                      (step) => Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text(
                          step,
                          style: AppTextStyles.c2.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
