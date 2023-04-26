import 'package:flutter/material.dart';
import 'package:my_app/pages/chuong01/provider.dart';
import 'package:my_app/provider/theme_number_provider.dart';
import 'package:my_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider<ThemeNumberProvider>(
          create: (context) => ThemeNumberProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            theme: ThemeData(brightness: Brightness.light),
            darkTheme: ThemeData(brightness: Brightness.dark),
            themeMode: value.changeTheme,
            debugShowCheckedModeBanner: false,
            home: const provider(),
          );
        },
      ),
    );
  }
}
