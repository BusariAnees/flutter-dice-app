import 'package:flutter/material.dart';
import 'package:titan_1_app/styled_text.dart';
import 'dart:math';

final randomizer = Random();

class ImageSwitcher extends StatefulWidget {
  const ImageSwitcher({super.key});

  @override
  State<ImageSwitcher> createState() {
    return _ImageSwitcher();
  }
}

class _ImageSwitcher extends State<ImageSwitcher> {
  var imagechange = 3;
  var duplicatechange = 2;

  void RollDice() {
    setState(() {
      duplicatechange = randomizer.nextInt(6) + 1;
      imagechange = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/dice-$imagechange.png', width: 150),
              Image.asset('assets/images/dice-$duplicatechange.png',
                  width: 150),
            ],
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: RollDice,
            child: const StyledText('Roll Dice'),
          )
        ],
      ),
    );
  }
}
