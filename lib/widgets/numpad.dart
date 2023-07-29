import 'package:flutter/material.dart';
import 'package:numpad_layout/extension/numbers.dart';
import 'package:numpad_layout/widgets/num_button.dart';

class NumPad extends StatelessWidget {
  /// Callback when number pressed
  final void Function(String number) onType;

  /// for spacing horizontal default [MainAxisAlignment.spaceBetween]
  final MainAxisAlignment mainAxisAlignment;

  // padding over the whole layout default [horizontal = 30]
  final EdgeInsets? padding;

  /// the widget at the left of the 0
  final Widget? leftWidget;

  /// the widget at the right of the 0
  final Widget? rightWidget;

  /// on Holding pressed any number default [Color(0xFFC9C9C9)]
  final Color? highlightColor;

  /// spacing vertical default [40]
  final double runSpace;

  /// custom number style
  final TextStyle? numberStyle;

  /// radius for the shape of the number default [45]
  final double? radius;

  /// Displays arabic digits if equal [true] default is [false] = english
  final bool? arabicDigits;

  /// it returns the digits as english even it's arabic digits default [false] it return it what it is
  final bool returnItAsEnglish;

  const NumPad({
    Key? key,
    required this.onType,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.padding,
    this.leftWidget,
    this.rightWidget,
    this.highlightColor,
    this.runSpace = 40,
    this.numberStyle,
    this.radius,
    this.arabicDigits,
    this.returnItAsEnglish = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onTypeNumber(int number) {
      String num = arabicDigits == true ? number.toString().toArabicNumbers : number.toString();

      onType(returnItAsEnglish == true ? num.toEnglishNumbers : num);
    }

    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              for (int number = 1; number <= 3; number++)
                NumButton(
                  number: number.toString(),
                  highlightColor: highlightColor,
                  numberStyle: numberStyle,
                  radius: radius,
                  arabicDigits: arabicDigits,
                  onTap: () => onTypeNumber(number),
                ),
            ],
          ),
          SizedBox(
            height: runSpace,
          ),
          Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              for (int number = 4; number <= 6; number++)
                NumButton(
                  number: number.toString(),
                  highlightColor: highlightColor,
                  numberStyle: numberStyle,
                  radius: radius,
                  arabicDigits: arabicDigits,
                  onTap: () => onTypeNumber(
                    number,
                  ),
                ),
            ],
          ),
          SizedBox(
            height: runSpace,
          ),
          Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              for (int number = 7; number <= 9; number++)
                NumButton(
                  number: number.toString(),
                  highlightColor: highlightColor,
                  numberStyle: numberStyle,
                  radius: radius,
                  arabicDigits: arabicDigits,
                  onTap: () => onTypeNumber(number),
                ),
            ],
          ),
          SizedBox(
            height: runSpace,
          ),
          Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: leftWidget ?? const SizedBox(),
              ),
              NumButton(
                number: "0",
                highlightColor: highlightColor,
                numberStyle: numberStyle,
                radius: radius,
                arabicDigits: arabicDigits,
                onTap: () => onTypeNumber(0),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: rightWidget ?? const SizedBox(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
