import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prof_card/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (HomeController controller) {
        return Scaffold(
          body: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 30),
                child: Image.network(
                  'https://image.freepik.com/free-vector/welcome-colorful-letters-with-people-characters-flat-vector-illustration-isolated_118421-423.jpg',
                  width: 150,
                  height: 150,
                ),
              ),
              Text(
                "Selamat datang, ${controller.namaLengkap}!",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 8,
              ),
              Text("Ctech apps home.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: Colors.black))
            ],
          )),
        );
      },
    );
  }
}
