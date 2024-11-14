import 'package:bookly_app/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slaidingAnimatin;
  @override
  void initState() {
    super.initState();
    animationController =AnimationController(vsync: this,duration: const Duration(seconds: 2));
    slaidingAnimatin = Tween<Offset>(begin:  const Offset(0.0, 20), end:  Offset.zero).animate(animationController);
    animationController.forward();
  
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        
       Image.asset(AssetsData.logo,),
       const SizedBox(height: 10,),
        Slidingtext(slaidingAnimatin: slaidingAnimatin),
      ],
    );
  }
}
