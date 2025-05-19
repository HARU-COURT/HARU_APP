import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';
import 'package:harucourt/components/back_header.dart';
import 'package:harucourt/components/move_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Column(
          children: [
            BackHeader(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                children: [
                  Text(
                    "하루법정",
                    style: AppTextStyles.body2.copyWith(color: AppColor.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.002),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "판",
                        style: AppTextStyles.title3.copyWith(
                          color: AppColor.black,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                      Text(
                        "결",
                        style: AppTextStyles.title3.copyWith(
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Image.asset('assets/images/Bear.png'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "이",
                        style: AppTextStyles.headline.copyWith(
                          color: AppColor.black,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                      Text(
                        "유",
                        style: AppTextStyles.headline.copyWith(
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.gray200, width: 1),
                    ),
                    child: Text(
                      "대한민국은 민주공화국이며, 그 주권은 국민에게 있다. 모든 권력은 국민으로부터 나오며, 국가는 국민의 인간으로서의 존엄과 가치를 존중해야 한다. 국민은 행복을 추구할 권리를 가지며, 국가는 그 실현을 위해 노력할 의무가 있다.",
                      style: AppTextStyles.body3.copyWith(
                        color: AppColor.black,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  MoveButton(text: "결과 상세보기"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
