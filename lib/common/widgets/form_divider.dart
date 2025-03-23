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
                color: dark ? TeaColors.darkGrey : TeaColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(TeaTexts.orSignInWith,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: dark ? TeaColors.darkGrey : TeaColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}

