import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/themeprovider.dart';
import 'package:todoapp/routes/routes.dart';
import 'package:todoapp/provider/add_task_addprovider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskProvider()),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ), 
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          initialRoute: Routes.splash,
          onGenerateRoute: Routes.generateRoute,
          debugShowCheckedModeBanner: false,
          title: 'Todo App',
          themeMode: themeProvider.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.cyan,
            scaffoldBackgroundColor: Colors.white,
            cardColor: Colors.white,
            appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.black,
            cardColor: Colors.grey[900],
            appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
          ),
        );
      },
    );
  }
}
