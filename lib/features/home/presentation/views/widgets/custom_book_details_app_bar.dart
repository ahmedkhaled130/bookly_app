import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(onPressed: () {
        GoRouter.of(context).push("/homeView");
      }, icon: const Icon(Icons.close)),
      actions: [
        IconButton(onPressed: () {

        }, icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
