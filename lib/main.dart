import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/add_task_addprovider.dart';
import 'package:todoapp/routes/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

Future<void> precacheGoogleFonts() async {
  // Preload Outfit in all common weights you use
  await Future.wait([
    GoogleFonts.outfit(fontWeight: FontWeight.w400),
    GoogleFonts.outfit(fontWeight: FontWeight.w500),
    GoogleFonts.outfit(fontWeight: FontWeight.w600),
    GoogleFonts.outfit(fontWeight: FontWeight.w700),
  ] as Iterable<Future<dynamic>>);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.splash,
      onGenerateRoute: Routes.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.oswaldTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
     
    );
  }
}