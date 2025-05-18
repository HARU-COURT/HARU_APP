import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/components/back_header.dart';
import 'package:harucourt/components/next_button.dart';
import 'package:harucourt/widgets/categorydropdown.dart';
import 'package:harucourt/widgets/inputcotent.dart';
import 'package:harucourt/widgets/inputtitle.dart';

class ConcernWriterPage extends StatefulWidget {
  const ConcernWriterPage({super.key});

  @override
  State<ConcernWriterPage> createState() => _ConcernWriterPageState();
}

class _ConcernWriterPageState extends State<ConcernWriterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Column(
          children: [
            BackHeader(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListView(
                  children: [
                    CategoryDropdown(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    InputTitle(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    InputContent(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    NextButton(),
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
