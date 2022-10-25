import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_traking/providers/ui_provider.dart';
import 'package:time_traking/router/routers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        routes: appRouter,
        initialRoute: 'loading',
        
        theme: ThemeData(
          
          primaryColor: Colors.amber[800],
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.orange,
            
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.orange
          ),
    
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              
              color: Color(0xffeb6447)
            ),
            headline2: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF030047),
            ),
    
          )
        ),
        
      ),
    );
  }
}