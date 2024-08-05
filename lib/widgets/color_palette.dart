import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/constants.dart';

class ColorPalette extends StatefulWidget {
  const ColorPalette({super.key});

  @override
  State<ColorPalette> createState() => _ColorPaletteState();
}

class _ColorPaletteState extends State<ColorPalette> {
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Color',
            style: TextStyle(
              color: Get.isDarkMode ? Colors.white : darkGreyClr,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Wrap(
          children: List.generate(
            5,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedColor = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr.withOpacity(0.5),
                  child: CircleAvatar(
                    radius: 18,
                    child: selectedColor == index
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : null,
                    backgroundColor: index == 0
                        ? kColors[3+2]
                        : index == 1
                            ? kColors[4+2]
                            : index == 2
                                ? kColors[5+2]
                                : index == 3
                                    ? kColors[6+2]
                                    : kColors[7+2],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
