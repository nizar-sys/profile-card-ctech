import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prof_card/home/home_screen.dart';
import 'package:prof_card/login/login_screen.dart';
import 'package:prof_card/menu/menu_screen.dart';
import 'package:prof_card/news/news_detail_screen.dart';
import 'package:prof_card/news/news_list_screen.dart';
import 'package:prof_card/profile/edit_profile_screen.dart';
import 'package:prof_card/profile/profile_screen.dart';
import 'package:prof_card/splash/loading_screen.dart';
import 'package:prof_card/users/users_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[50],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
        ),
      ),
      initialRoute: 'loading',
      routes: {
        'loading': (context) => const LoadingScreen(),
        'home': (context) => const HomeScreen(),
        'profile': (context) => const ProfileScreen(),
        'newsList': (context) => const NewsListScreen(),
        'newsDetail': (context) => const NewsDetailScreen(),
        'userList': (context) => const UserListScreen(),
        'menu': (context) => const MenuScreen(),
        'login': (context) => const LoginScreen(),
        'edit_profile': (context) => const EditProfileScreen(),
      },
    );
  }
}
