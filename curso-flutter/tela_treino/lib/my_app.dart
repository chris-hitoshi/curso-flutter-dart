import 'package:flutter/material.dart';
import 'package:tela_treino/start_app.dart';


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Ubuntu'
      ),
      home: const StartApp(),
    ); 
  }
}