import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harucourt/app/config/app_color.dart';
import 'package:harucourt/app/config/app_text_styles.dart';

class CategoryDropdown extends StatefulWidget {
  final Function(String)? onCategorySelected;
  final String? initialValue;

  const CategoryDropdown({
    super.key,
    this.onCategorySelected,
    this.initialValue,
  });

  @override
  State<CategoryDropdown> createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  String? selectedValue;
  bool isOpen = false;

  final List<String> options = ['친구', '가족', '연애', '학교', '진로', '기타'];
  final GlobalKey _containerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (!mounted) return;

                final contextRef = _containerKey.currentContext;
                if (contextRef == null) return;

                final renderObject = contextRef.findRenderObject();
                if (renderObject is! RenderBox || !renderObject.attached)
                  return;

                final RenderBox box = renderObject;
                final RenderBox overlay =
                    Overlay.of(context).context.findRenderObject() as RenderBox;

                final Offset position = box.localToGlobal(Offset.zero);
                final Size size = box.size;
                final Size screenSize = overlay.size;

                final double right =
                    screenSize.width - (position.dx + size.width);

                if (!mounted) return;

                setState(() => isOpen = true);

                showMenu<String>(
                  context: context,
                  position: RelativeRect.fromLTRB(
                    position.dx,
                    position.dy + size.height + 4,
                    right,
                    0.0,
                  ),
                  elevation: 0, // ✅ 그림자 제거
                  color: Colors.white, // ✅ 배경 흰색
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: AppColor.gray200, width: 1),
                  ),
                  constraints: BoxConstraints.tightFor(width: size.width),
                  items:
                      options.map((item) {
                        return PopupMenuItem<String>(
                          value: item,
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 48,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              item,
                              style: AppTextStyles.body3.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                ).then((value) {
                  if (!mounted) return;
                  setState(() {
                    if (value != null) {
                      selectedValue = value;
                      widget.onCategorySelected?.call(value);
                    }
                    isOpen = false;
                  });
                });
              });
            },
            child: Container(
              key: _containerKey,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.gray200),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedValue ?? '카테고리 선택',
                    style: AppTextStyles.body3.copyWith(color: AppColor.black),
                  ),
                  SvgPicture.asset(
                    isOpen ? 'assets/icons/Up.svg' : 'assets/icons/Down.svg',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
