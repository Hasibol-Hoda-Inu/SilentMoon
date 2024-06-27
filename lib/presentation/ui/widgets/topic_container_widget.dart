import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/set_reminder_time_screen.dart';
import '../utility/app_color.dart';
import '../utility/image_assets.dart';

class TopicContainer extends StatelessWidget {
  const TopicContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(const SetReminderTimeScreen());
      },
      child: Container(
        height: 200,
        width: 160,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            SvgPicture.asset(ImageAssets.ContainerImage,),
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 20, right: 10,bottom: 10),
              child: Text('Reduce stress', textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),),
            )
          ],
        ),
      ),
    );
  }
}