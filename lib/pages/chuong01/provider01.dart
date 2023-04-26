import 'package:flutter/material.dart';
import 'package:my_app/pages/chuong01/provider.dart';
import 'package:my_app/provider/theme_number_provider.dart';
import 'package:provider/provider.dart';

class provider01 extends StatelessWidget {
  const provider01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(const provider());
                  },
                  child: const Icon(Icons.abc)),
            ),
            Consumer<ThemeNumberProvider>(
              builder: (context, value, child) {
                return Text(
                  value.number.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<ThemeNumberProvider>(context, listen: false)
                      .upNumber();
                },
                child: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
