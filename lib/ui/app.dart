import 'package:flutter/material.dart';
import 'package:servios_modelos_app/theme.dart';
import 'package:servios_modelos_app/ui/product/product_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Servicios',
      theme: appTheme,
      home: ProductView(),
    );
  }
}