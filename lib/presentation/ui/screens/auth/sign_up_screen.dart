import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('Logo'),
          Image.asset('SignUpScreenImage'),
          const Text('We are what we do', style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Colors.black87,
          ),),
          const Text('Thousand of people are using silent moon for smalls meditation ', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),),
          ElevatedButton(onPressed: (){}, child: const Text('SIGN UP')),
          Row(
            children: [
              const Text('ALREADY HAVE AN ACCOUNT?'),
              const SizedBox(width: 5,),
              TextButton(onPressed: (){}, child: const Text('SIGN IN'))
            ],
          )
        ],
      ),
    );
  }
}
