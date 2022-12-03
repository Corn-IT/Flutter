import 'package:flutter/material.dart';

class RegisterLink extends StatelessWidget {
  const RegisterLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Don't have an account?"),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.person),
            label: const Text('REGISTER'),
          ),
        ],
      ),
    );
  }
}
