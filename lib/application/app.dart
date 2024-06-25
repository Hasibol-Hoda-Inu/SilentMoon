import 'package:flutter/material.dart';

import '../presentation/ui/screens/auth/sign_up_screen.dart';

class SilentMoon extends StatelessWidget {
  const SilentMoon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpScreen(),
    );
  }
}
