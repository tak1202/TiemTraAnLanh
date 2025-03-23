import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/utils/constants/image_strings.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';

class TeaLoginHeader extends StatelessWidget {
  const TeaLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? TeaImage.logoDark : TeaImage.logoWhite),
        ),
        Text(TeaTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
