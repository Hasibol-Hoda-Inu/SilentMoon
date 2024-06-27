import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:silent_moon/presentation/ui/utility/app_color.dart';
import 'package:silent_moon/presentation/ui/utility/image_assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 40, right: 12, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Text('What Brings You', style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),),
               const Text('to Silent Moon', style: TextStyle(
                fontSize: 28,
              ),),
               const Text('choose a topic to focus on', style: TextStyle(
                 fontSize: 20,
                 color: Color(0xffA1A4B2),
                 fontWeight: FontWeight.w300
               ),),
              const SizedBox(height: 30,),
              Expanded(child:
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                      crossAxisSpacing: 12
                ),
                 itemBuilder: (context, index){
                  return const TopicCounter();
                },
                  itemCount: 10,
              ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopicCounter extends StatelessWidget {
  const TopicCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Text('Reduce stress', textAlign: TextAlign.start, style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),),
          )
        ],
      ),
    );
  }
}
