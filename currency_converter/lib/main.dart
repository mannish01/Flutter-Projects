import 'package:currency_converter/currency_converter_cupertino.dart';
import 'package:currency_converter/currency_converter_material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCupertinoApp());
}

// There are three types of widget
// 1. StateLessWidget
// 2. StateFullWidget
// 3. InheritedWidget
class MyApp extends StatelessWidget {
  // abstract class implementation should be overridden
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // return const Text('Hello world', textDirection: TextDirection.ltr);

    return MaterialApp(home: CurrencyConverterMaterial());
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(home: CurrencyConverterCupertinoPage());
  }
}

// NOT FOLLOWING ANY DESIGN SYSTEM
//1 MATERIAL DESIGN
//2 CUPERTINO DESIGN
