import 'package:flutter/material.dart';
import 'package:silent_moon/presentation/ui/utility/image_assets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(ImageAssets.BgOfSingUpScreen, width: double.infinity,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const Text('We are what we do', style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.black87,
                  ),),
                  const Text('Thousand of people are using silent moon for smalls meditation ', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 62,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('SIGN UP'),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('ALREADY HAVE AN ACCOUNT?', style: TextStyle(
                        color: Colors.grey,
                      ),),
                      TextButton(onPressed: (){}, child: const Text('SIGN IN'))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
