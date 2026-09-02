import 'package:flutter/material.dart';

import 'package:ecommerceapp/screens/LoginScreen.dart';
import 'package:ecommerceapp/screens/SecondOnboardingScreen.dart';

class ThirdOnboardingScreen extends StatelessWidget {
  const ThirdOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) => OnboardingLayout(
        artwork: const Icon(
          Icons.phonelink_lock_rounded,
          size: 112,
          color: Color(0xFF1565C0),
        ),
        title: 'Secure Payments',
        description: 'Multiple payment methods\nfor your convenience.',
        page: 2,
        actionText: 'Get Started',
        onAction: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute<void>(builder: (_) => const LoginScreen()),
        ),
        onSkip: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute<void>(builder: (_) => const LoginScreen()),
        ),
      );
}
