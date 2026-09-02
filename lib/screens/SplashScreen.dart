import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ecommerceapp/screens/FirstOnboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final Timer _navigationTimer;

  @override
  void initState() {
    super.initState();
    _navigationTimer = Timer(const Duration(seconds: 10), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute<void>(builder: (_) => const FirstOnboardingScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _navigationTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF08254A), Color(0xFF16477B)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                right: -90,
                bottom: -110,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: .08),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _BrandMark(size: 76),
                    const SizedBox(height: 18),
                    const Text('ShopEase', style: TextStyle(color: Colors.white, fontSize: 31, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 12),
                    const Text('Better Shopping\nBetter Living', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFC9D7E9), fontSize: 14, height: 1.4)),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

class _BrandMark extends StatelessWidget {
  const _BrandMark({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Icon(
          Icons.shopping_bag_rounded,
          size: size * .58,
          color: const Color(0xFF0B315F),
        ),
      );
}
