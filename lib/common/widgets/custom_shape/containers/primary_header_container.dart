import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:tiemtra_anlanh/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: TeaColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CircularContainer(
                      backgroundColor:
                          TeaColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CircularContainer(
                      backgroundColor:
                          TeaColors.textWhite.withOpacity(0.1))),
            ],
          ),
        ),
      ),
    );
  }
}