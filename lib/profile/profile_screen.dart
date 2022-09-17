import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prof_card/home/home_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (HomeController controller) {
        return Scaffold(
          body: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.deepOrange.shade300],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: const [0.5, 0.9],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const CircleAvatar(
                          backgroundColor: Colors.white70,
                          minRadius: 60.0,
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/74032907?s=400&u=e3a89c97737d8f71a52af2a24c13474bb52e17f7&v=4'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      controller.namaLengkap,
                      style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_literals_to_create_immutables
              Column(children: <Widget>[
                ListTile(
                  title: const Text(
                    'Nama lengkap:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    controller.namaLengkap,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Nama panggilan:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    controller.nama,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Email:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    controller.email,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Hobi:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    controller.hobi,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Pekerjaan:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    controller.pekerjaan,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        );
      },
    );
  }
}
