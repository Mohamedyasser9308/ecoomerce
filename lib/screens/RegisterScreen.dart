import 'package:flutter/material.dart';

import 'package:ecommerceapp/screens/HomeScreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(leading: const BackButton(), backgroundColor: Colors.white),
        body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(child: Icon(Icons.shopping_bag_rounded, size: 52, color: Color(0xFF0B315F))),
                const SizedBox(height: 12),
                const Text('Create Account', textAlign: TextAlign.center, style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Color(0xFF102A4D))),
                const SizedBox(height: 8),
                const Text('Join us and start shopping', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF66758B))),
                const SizedBox(height: 30),
                const _FieldLabel('Full Name'),
                const SizedBox(height: 8),
                const TextField(decoration: InputDecoration(hintText: 'Enter your name')),
                const SizedBox(height: 18),
                const _FieldLabel('Email'),
                const SizedBox(height: 8),
                const TextField(keyboardType: TextInputType.emailAddress, decoration: InputDecoration(hintText: 'you@example.com')),
                const SizedBox(height: 18),
                const _FieldLabel('Password'),
                const SizedBox(height: 8),
                const TextField(obscureText: true, decoration: InputDecoration(hintText: 'Create a password', suffixIcon: Icon(Icons.visibility_outlined))),
                const SizedBox(height: 28),
                SizedBox(
                  height: 54,
                  child: FilledButton(
                    onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute<void>(builder: (_) => const HomeScreen()),
                      (_) => false,
                    ),
                    style: FilledButton.styleFrom(backgroundColor: const Color(0xFF0B315F)),
                    child: const Text('Create Account'),
                  ),
                ),
                const SizedBox(height: 18),
                const Row(children: [Expanded(child: Divider()), Padding(padding: EdgeInsets.symmetric(horizontal: 12), child: Text('or')), Expanded(child: Divider())]),
                const SizedBox(height: 18),
                OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.g_mobiledata_rounded), label: const Text('Continue with Google')),
                const SizedBox(height: 12),
                OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.facebook_rounded), label: const Text('Continue with Facebook')),
              ],
            ),
          ),
        ),
      );
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.text);
  final String text;

  @override
  Widget build(BuildContext context) => Text(text, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFF344862)));
}
