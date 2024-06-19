import 'package:call_pixabay_api/Provider/Api_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'View/Homepage.dart';
void main(){
  runApp(ChangeNotifierProvider(
      create: (context) => Homeproivder(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
