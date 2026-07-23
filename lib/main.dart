import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/login_screen.dart';
void main() {
runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Name V2 DEMO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
          ),
          useMaterial3: true,
      ),
      // routes: {
      //   '/':(context) => HomeScreen(),
      //   '/profile':(context) => ProfileScreen(),
      // },
 
      // initialRoute: '/profile',
 
      home: const LoginScreen(),
    );
  }
}