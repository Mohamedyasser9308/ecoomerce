import 'package:flutter/material.dart';

import 'package:ecommerceapp/screens/HomeScreen.dart';
import 'package:ecommerceapp/screens/RegisterScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 42),
                const Center(
                  child: Icon(
                    Icons.shopping_bag_rounded,
                    size: 56,
                    color: Color(0xFF0B315F),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'ShopEase',
                    style: TextStyle(
                      color: Color(0xFF0B315F),
                      fontWeight: FontWeight.w800,
                      fontSize: 23,
                    ),
                  ),
                ),
                const SizedBox(height: 42),
                const Text('Welcome Back', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Color(0xFF102A4D))),
                const SizedBox(height: 8),
                const Text('Login to your account', style: TextStyle(color: Color(0xFF66758B))),
                const SizedBox(height: 28),
                const _Label(text: 'Email or Phone number'),
                const SizedBox(height: 8),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'you@example.com'),
                ),
                const SizedBox(height: 18),
                const _Label(text: 'Password'),
                const SizedBox(height: 8),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Enter your password', suffixIcon: Icon(Icons.visibility_outlined)),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: () {}, child: const Text('Forgot password?')),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 54,
                  child: FilledButton(
                    onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute<void>(builder: (_) => const HomeScreen()),
                    ),
                    style: FilledButton.styleFrom(backgroundColor: const Color(0xFF0B315F)),
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(height: 18),
                const Row(children: [Expanded(child: Divider()), Padding(padding: EdgeInsets.symmetric(horizontal: 12), child: Text('or')), Expanded(child: Divider())]),
                const SizedBox(height: 18),
                OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.g_mobiledata_rounded), label: const Text('Continue with Google')),
                const SizedBox(height: 12),
                OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.facebook_rounded), label: const Text('Continue with Facebook')),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(builder: (_) => const RegisterScreen()),
                      ),
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}

class _Label extends StatelessWidget {
  const _Label({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) => Text(text, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFF344862)));
}
