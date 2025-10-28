import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(this.errMsg,{super.key});
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Text(errMsg,style: Styles.textStyle18,);
  }
}
