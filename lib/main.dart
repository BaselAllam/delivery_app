import 'package:delivery_app/restaurant/restaurant_controller.dart';
import 'package:delivery_app/screens/loginpages/introscreen.dart';
import 'package:delivery_app/screens/loginpages/login_page.dart';
import 'package:delivery_app/screens/loginpages/register_page.dart';
import 'package:delivery_app/screens/loginpages/signup_or_login_page.dart';
import 'package:delivery_app/theme/colors.dart';
import 'package:delivery_app/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/screens/homepage/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: primary,
        colorScheme: ThemeData().colorScheme.copyWith(primary: secondary),
      ),
      title: 'Delviro',
      home: BlocProvider(
        create: (context) => RestaurantCubit(),
        child: const NavigationScreen(),
      )
    );
  }
}
