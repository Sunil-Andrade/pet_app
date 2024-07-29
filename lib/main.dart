import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/navbar/navbar.dart';
import 'package:pet_app/onboarding/onboarding.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Adopt App',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(233, 96, 189, 158)),
        useMaterial3: true,
        textTheme: TextTheme(
          titleMedium: TextStyle(
            color: Colors.teal[300],
            fontSize: 18,
          ),
          titleSmall: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      home: NavBar(),
    );
  }
}
