import 'package:flutter/material.dart';
import 'package:titan_1_app/image_switcher.dart';

const beginalignment = Alignment.topLeft;
const endalignment = Alignment.bottomRight;

class GradientHolder extends StatelessWidget {
  const GradientHolder(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: beginalignment,
              end: endalignment),
        ),
        child: ImageSwitcher());
  }
}
