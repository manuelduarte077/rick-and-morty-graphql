import 'package:flutter/material.dart';
import 'package:flutter_with_bloc_pattern_and_graphql/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GraphQL and BLOC Pattern',
      home: HomeScreen(),
    );
  }
}
