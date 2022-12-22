import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _passwordOpen = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  _handleLogin() {
    String username = nameController.text;
    String passWord = passController.text;

    print("$username---$passWord");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            // obscureText: !_passwordOpen,
            controller: nameController,
            decoration: InputDecoration(
              hintText: ('Username'),
              prefixIcon: const Icon(Icons.person),
              fillColor: const Color(0xffE8EFF3),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
              ),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            controller: passController,
            obscureText: !_passwordOpen,
            decoration: InputDecoration(
              hintText: ('Password'),
              prefixIcon: const Icon(Icons.lock),
              fillColor: const Color(0xffE8EFF3),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    _passwordOpen = !_passwordOpen;
                  });
                },
                child: Icon(_passwordOpen
                    ? Icons.remove_red_eye_outlined
                    : Icons.visibility_off_outlined),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
              ),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
          ),
          const SizedBox(height: 105),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff03A9F1),
                shadowColor: const Color(0xff03A9F1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
              onPressed: _handleLogin,
              child: const Text('LOGIN'),
            ),
          ),
        ],
      ),
    );
  }
}
