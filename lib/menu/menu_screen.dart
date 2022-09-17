import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prof_card/home/home_screen.dart';
import 'package:prof_card/news/news_list_screen.dart';
import 'package:prof_card/profile/profile_screen.dart';
import 'package:prof_card/users/users_list_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  var listPopMenu = {'Logout'};

  int navIndex = 0;

  var listWidget = [
    const HomeScreen(),
    const NewsListScreen(),
    const UserListScreen(),
    const ProfileScreen(),
  ];

  var titlePage = ['Home', 'News', 'Users', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titlePage[navIndex]),
        actions: [
          PopupMenuButton(
            onSelected: ((value) {
              handleClick(context, value);
            }),
            itemBuilder: ((context) {
              return listPopMenu.map((choice) {
                return PopupMenuItem(value: choice, child: Text(choice));
              }).toList();
            }),
          )
        ],
      ),
      body: listWidget[navIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              navIndex = index;
            });
          },
          currentIndex: navIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "Users"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }

  void handleClick(BuildContext context, Object? value) {
    switch (value) {
      case 'Logout':
        const snackBar = SnackBar(content: Text("Logout Berhasil!"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        Get.offNamed("login");
        break;
      default:
    }
  }
}
