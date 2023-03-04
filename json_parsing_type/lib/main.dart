import 'package:flutter/material.dart';
import 'package:json_parsing_type/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      onGenerateRoute: RouteGenerators.getRoute,
      initialRoute:
     Routes.home,
    );
  }
}

