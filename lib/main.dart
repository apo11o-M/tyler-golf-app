import 'package:flutter/material.dart';
import 'home_page.dart';
import 'a1.dart';
import 'a2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'This is the home page',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: HomePage()
        // home: A1Page()
        home: UploadPage()
    );
  }
}

// Widgets
// Widgets are elements of a screen. A scree without widgets is completely blank
// - Content Widgets
//   Stuff that users are supposed to see: Buttons, Text, Images, etc
// - Layout Widgets
//   "Invisible" from the user, it's used to place the content widgets in
//   specific positions and, well, layouts.
