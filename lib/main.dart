import 'package:flutter/material.dart';
import 'package:food_app/Favourite_Provider.dart';
import 'package:food_app/Splash_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
      ChangeNotifierProvider(create: (_) => FavouriteProvider(),
      child: const MyApp())
  );


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    );
  }
}
