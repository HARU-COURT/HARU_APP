import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harucourt/screens/concern_writer.dart';
import 'package:harucourt/screens/judge_mode.dart';
import 'package:harucourt/screens/manual.dart';
import 'package:harucourt/screens/onboarding.dart';
import 'package:harucourt/screens/response_version.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => OnboardingPage()),
        GetPage(name: '/Manual', page: () => ManualPage()),
        GetPage(name: '/ConcernWriter', page: () => ConcernWriterPage()),
        GetPage(name: '/ResponseVersion', page: () => ResponseVersionPage()),
        GetPage(name: '/JudgeMode', page: () => JudgeModePage()),
      ],
      // 실행 시 내가 원하는 페이지로 이동
      initialRoute: '/JudgeMode',
    );
  }
}
