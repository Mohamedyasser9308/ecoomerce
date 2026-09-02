import 'package:flutter/material.dart';
import 'package:ecommerceapp/screens/LoginScreen.dart';
import 'package:ecommerceapp/screens/SecondOnboardingScreen.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({super.key});

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
                  decoration: const BoxDecoration(color: Color(0xFFEAF3FF), shape: BoxShape.circle),
                  child: const Icon(Icons.shopping_cart_rounded, size: 120, color: Color(0xFF1565C0)),
                ),
                const SizedBox(height: 42),
                const Text('Discover Amazing\nProducts', textAlign: TextAlign.center, style: TextStyle(fontSize: 26, height: 1.2, fontWeight: FontWeight.w700, color: Color(0xFF102A4D))),
                const SizedBox(height: 14),
                const Text('Shop from thousands of products\nwith the best quality and prices.', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF66758B), fontSize: 14, height: 1.5)),
                const SizedBox(height: 24),
                const Row(mainAxisAlignment: MainAxisAlignment.center, children: [_PageDot(active: true), _PageDot(), _PageDot()]),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: FilledButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const SecondOnboardingScreen(),
                      ),
                    ),
                    style: FilledButton.styleFrom(backgroundColor: const Color(0xFF0B315F), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                    child: const Text('Next'),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute<void>(builder: (_) => const LoginScreen()),
                  ),
                  child: const Text('Skip'),
                ),
              ],
            ),
          ),
        ),
      );
}

class _PageDot extends StatelessWidget {
  const _PageDot({this.active = false});
  final bool active;

  @override
  Widget build(BuildContext context) => Container(
        width: active ? 20 : 7,
        height: 7,
        margin: const EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(color: active ? const Color(0xFF0B315F) : const Color(0xFFD6DFEA), borderRadius: BorderRadius.circular(10)),
      );
}
