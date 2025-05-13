import 'package:flutter/material.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harucourt/app/config/app_text_styles.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: AppColor.gray100, width: 1)),
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColor.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: _index,
            onTap: (int newIndex) {
              setState(() {
                _index = newIndex;
              });
            },
            // selectedFontSize는 double이어야 하는데 AppTextStyles.c2는 TextStyle이라서 사용 불가
            // 비유 -> "신발 사이즈를 숫자로 입력해 주세요"라는 칸에 "운동화(회색, 265mm, 나이키)"라고 적는 거랑 같음
            selectedFontSize: AppTextStyles.c2.fontSize ?? 11.0,
            unselectedFontSize: AppTextStyles.c2.fontSize ?? 11.0,
            selectedItemColor: AppColor.black,
            unselectedItemColor: AppColor.gray300,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: SvgPicture.asset(
                    'assets/icons/Home.svg',
                    color: _index == 0 ? AppColor.black : AppColor.gray300,
                  ),
                ),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: SvgPicture.asset(
                    'assets/icons/Storage.svg',
                    color: _index == 1 ? AppColor.black : AppColor.gray300,
                  ),
                ),
                label: '보관함',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: SvgPicture.asset(
                    'assets/icons/User.svg',
                    color: _index == 2 ? AppColor.black : AppColor.gray300,
                  ),
                ),
                label: '내 정보',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
