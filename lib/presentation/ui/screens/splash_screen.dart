import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:silent_moon/presentation/ui/screens/topic_selection_screen.dart';
import 'package:silent_moon/presentation/ui/utility/app_color.dart';
import 'package:silent_moon/presentation/ui/utility/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(ImageAssets.BgOfSplashScreen, fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 const Column(
                  children: [
                    Text('Hi Enu!, Welcome', style: TextStyle(
                      color: Color(0xffFFECCC),
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),),
                    Text('to Silent Moon', style: TextStyle(
                      color: Color(0xffFFECCC),
                      fontSize: 30,
                    ),),
                    SizedBox(height: 16,),
                    Text('Explore the app, Find some peace of mind to prepare for meditation.', textAlign: TextAlign.center,style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),),
                  ],
                ),
                const SizedBox(height: 90,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        Get.to(const HomeScreen());
                      },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                      child: const Text('GET STARTED', style: TextStyle(
                          color: AppColors.primaryColor,
                        fontSize: 18,
                      ),)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
