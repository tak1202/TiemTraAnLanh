import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/common/widgets/custom_shape/containers/primary_header_container.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Container()
            ),
          ],
        ),
      ),
    );
  }
}
