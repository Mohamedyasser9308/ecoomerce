import 'package:ecommerceapp/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ShopEaseApp());

class ShopEaseApp extends StatelessWidget {
  const ShopEaseApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'ShopEase',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0B315F)),
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const SplashScreen(),
      );
}
