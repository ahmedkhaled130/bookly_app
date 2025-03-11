import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(

          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: "Search",
          prefixIcon: IconButton(onPressed: () {
            GoRouter.of(context).push("/homeView");
          }, icon: const Icon(Icons.close)),
          suffixIcon: IconButton(onPressed: () {

          }, icon: const Opacity(opacity:.9 ,
              child: Icon(FontAwesomeIcons.magnifyingGlass,size: 23,)))
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
