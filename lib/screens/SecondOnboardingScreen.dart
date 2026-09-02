import 'package:flutter/material.dart';

import 'package:ecommerceapp/screens/LoginScreen.dart';
import 'package:ecommerceapp/screens/ThirdOnboardingScreen.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) => OnboardingLayout(
        artwork: const Icon(
          Icons.local_shipping_rounded,
          size: 118,
          color: Color(0xFF1565C0),
        ),
        title: 'Fast & Reliable\nDelivery',
        description: 'Your orders will be delivered\nsafely and on time.',
        page: 1,
        actionText: 'Next',
        onAction: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const ThirdOnboardingScreen()),
        ),
        onSkip: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute<void>(builder: (_) => const LoginScreen()),
        ),
      );
}

class OnboardingLayout extends StatelessWidget {
  const OnboardingLayout({
    super.key,
    required this.artwork,
    required this.title,
    required this.description,
    required this.page,
    required this.actionText,
    required this.onAction,
    required this.onSkip,
  });

  final Widget artwork;
  final String title;
  final String description;
  final int page;
  final String actionText;
  final VoidCallback onAction;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 36, 24, 28),
            child: Column(
              children: [
                const Spacer(),
                Container(
                  width: 210,
                  height: 210,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEAF3FF),
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: artwork),
                ),
                const SizedBox(height: 42),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 26,
                    height: 1.2,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF102A4D),
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF66758B),
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => _Dot(active: index == page),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: FilledButton(
                    onPressed: onAction,
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFF0B315F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(actionText),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(onPressed: onSkip, child: const Text('Skip')),
              ],
            ),
          ),
        ),
      );
}

class _Dot extends StatelessWidget {
  const _Dot({required this.active});

  final bool active;

  @override
  Widget build(BuildContext context) => Container(
        width: active ? 20 : 7,
        height: 7,
        margin: const EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(
          color: active ? const Color(0xFF0B315F) : const Color(0xFFD6DFEA),
          borderRadius: BorderRadius.circular(10),
        ),
      );
}
