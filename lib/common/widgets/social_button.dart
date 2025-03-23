import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';
import 'package:tiemtra_anlanh/utils/constants/image_strings.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';

class TeaSocialButton extends StatelessWidget {
  const TeaSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TeaColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
                width: TeaSize.iconMd,
                height: TeaSize.iconMd,
                image: AssetImage(TeaImage.google)),
          ),
        ),
        SizedBox(width: TeaSize.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TeaColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
                width: TeaSize.iconMd,
                height: TeaSize.iconMd,
                image: AssetImage(TeaImage.facebook)),
          ),
        ),
      ],
    );
  }
}

