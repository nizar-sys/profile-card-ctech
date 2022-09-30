import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prof_card/home/home_controller.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (HomeController controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Edit Profile'),
          ),
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
                const ListTile(
                  title: Text(
                    'Nama lengkap:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 2),
                  child: TextField(
                      controller: controller.txtfullname,
                      decoration: const InputDecoration(
                          hintText: "Input your fullname...")),
                ),
                const ListTile(
                  title: Text(
                    'Nama Panggilan:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 2),
                  child: TextField(
                      controller: controller.txtusername,
                      decoration: const InputDecoration(
                          hintText: "Input your username...")),
                ),
                const ListTile(
                  title: Text(
                    'Email:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 2),
                  child: TextField(
                      controller: controller.txtEmail,
                      decoration: const InputDecoration(
                          hintText: "Input your email...")),
                ),
                const ListTile(
                  title: Text(
                    'Pekerjaan:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 2),
                  child: TextField(
                      controller: controller.txtpekerjaan,
                      decoration:
                          const InputDecoration(hintText: "Input your job...")),
                ),
                const ListTile(
                  title: Text(
                    'Hobi:',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 2),
                  child: TextField(
                      controller: controller.txthobi,
                      decoration: const InputDecoration(
                          hintText: "Input your hobby...")),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () => controller.handleSaveChange(),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                  ),
                  child: const Text("Simpan perubahan"),
                ),
                const SizedBox(
                  height: 15,
                ),
              ]),
            ],
          ),
        );
      },
    );
  }
}
