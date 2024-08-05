import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/themes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.labelText,
    required this.hintText,
    this.controller,
    this.widget,
    this.maxLines = 1,
    this.iconData,
  });

  final String? labelText;
  final String hintText;
  final TextEditingController? controller;
  final Widget? widget;
  final int? maxLines;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText!,
            style: TextStyle(
              color: Get.isDarkMode
                  ? Colors.white
                  : Colors.black.withOpacity(0.7),
              fontSize: 16,
            ),
          ),
          TextFormField(
            readOnly: widget != null ? true : false,
            maxLines: maxLines,
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: kSecondaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: kSecondaryColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: kSecondaryColor),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Get.isDarkMode
                    ? Colors.white
                    : Colors.black.withOpacity(0.7),
                fontSize: 16,
              ),
              suffixIcon: widget,
              suffixStyle: TextStyle(
                color: Get.isDarkMode
                    ? Colors.white
                    : Colors.black.withOpacity(0.7),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
