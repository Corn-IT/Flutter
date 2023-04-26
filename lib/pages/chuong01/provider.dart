import 'package:flutter/material.dart';
import 'package:my_app/pages/chuong01/provider01.dart';
import 'package:my_app/provider/theme_number_provider.dart';
import 'package:my_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class provider extends StatefulWidget {
  const provider({super.key});

  @override
  State<provider> createState() => _providerState();
}

class _providerState extends State<provider> {
  bool active = false;
  List<int> data = [1, 2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Switch(
                  value: active,
                  onChanged: (e) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .changeThemeText(active);
                    setState(() {
                      active = e;
                    });
                  }),
            ),
            Consumer<ThemeProvider>(
              builder: (context, value, child) {
                return Text(value.themeText);
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const provider01()));
                },
                child: const Icon(Icons.back_hand)),
            const Text('Push Page'),
            Consumer<ThemeNumberProvider>(builder: (context, value, child) {
              return Text(
                '${value.number}',
                style: const TextStyle(fontSize: 30),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  Provider.of<ThemeNumberProvider>(context, listen: false)
                      .upNumber();
                },
                child: const Icon(Icons.add)),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    width: 180,
                    height: 60,
                    margin: const EdgeInsets.only(right: 20),
                    color: Colors.amber,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(data[index].toString()),
                    ),
                  );
                }),
                itemCount: data.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
