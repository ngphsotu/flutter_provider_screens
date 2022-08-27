import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';
import 'home_screens.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Provier',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomeScreen(),
    );
  }
}

/*
  // Nhà cung cấp
    class YourProvider extends ChangeNotifier
    notifyListeners();
  --------------------------------------------------
  // Nhà phân phối
    ChangNotifierProvider
    MultiProvider
  --------------------------------------------------
  // Người sử dụng
    Consumer<YourProvider>
    context.watch<YourProvider>()
    context.read<YourProvider>()
  --------------------------------------------------
*/