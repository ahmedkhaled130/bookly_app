
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: "19.99€",
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomButton(
            fontSize: 16,
            text: "Free preview",
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(16),topRight: Radius.circular(16)),
            textColor: Colors.white,
          ),
        )
      ],
    );
  }
}