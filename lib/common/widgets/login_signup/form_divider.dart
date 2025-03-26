import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';

class TeaFormDivider extends StatelessWidget {
  const TeaFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TeaColors.borderSecondary : TeaColors.darkGrey, // Điều chỉnh màu viền
            thickness: 1.2,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          TeaTexts.orSignInWith,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: dark ? Colors.white : TeaColors.textPrimary, // Đổi màu chữ theo chế độ sáng/tối
            fontWeight: FontWeight.w600, // Làm đậm chữ để dễ đọc hơn
          ),
        ),
        Flexible(
          child: Divider(
            color: dark ? TeaColors.borderSecondary : TeaColors.darkGrey,
            thickness: 1.2,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}