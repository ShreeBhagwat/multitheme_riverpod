import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multitheme_riverpod/Providers/theme_provider.dart';
import 'package:multitheme_riverpod/Screens/home_screen.dart';
import 'package:multitheme_riverpod/Style/style.dart';

void main() {
  runApp(ProviderScope(child: MultithemeRiverpod()));
}

class MultithemeRiverpod extends StatelessWidget {
  MultithemeRiverpod({super.key});
  Styles styles = Styles();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final themeNotifer = ref.watch(themeProvider);
      return MaterialApp(
        theme: styles.themeData(themeNotifer.themeIndex, context),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      );
    });
  }
}
