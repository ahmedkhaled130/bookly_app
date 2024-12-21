import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    NavigatorToHome();
  }


@override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        slidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this,
            duration: const Duration(seconds: 1)
        );


    slidingAnimation =  Tween<Offset>(begin: const Offset(0,1) ,end:Offset.zero ).animate(animationController);
    animationController.forward();
  }
  void NavigatorToHome() {
    Future.delayed(const Duration(seconds: 2),() {
      Get.to(()=> const HomeView(),transition: Transition.fade,duration: kTranstionsDuration );
    },);
  }


}

