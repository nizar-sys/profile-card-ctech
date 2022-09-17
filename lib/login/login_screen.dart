import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prof_card/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: LoginController(),
        builder: (LoginController controller) {
          return Scaffold(
              appBar: AppBar(
                title: const Text("Login"),
              ),
              body: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                            child: Icon(Icons.rocket_launch,
                                size: 100, color: Colors.blue)),
                        const SizedBox(height: 12),
                        Center(
                          child: Text(
                            "Ctech apps",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  color: Colors.black,
                                ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Fullname",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        TextField(
                            controller: controller.txtfullname,
                            decoration: const InputDecoration(
                                hintText: "Input your fullname...")),
                        const SizedBox(height: 12),
                        Text(
                          "Username",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        TextField(
                            controller: controller.txtusername,
                            decoration: const InputDecoration(
                                hintText: "Input your username...")),
                        const SizedBox(height: 12),
                        Text(
                          "Email",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        TextField(
                            controller: controller.txtEmail,
                            decoration: const InputDecoration(
                                hintText: "Input your email...")),
                        const SizedBox(height: 12),
                        Text(
                          "Hobby",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        TextField(
                            controller: controller.txthobi,
                            decoration: const InputDecoration(
                                hintText: "Input your hobby...")),
                        const SizedBox(height: 12),
                        Text(
                          "Profession",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        TextField(
                            controller: controller.txtpekerjaan,
                            decoration: const InputDecoration(
                                hintText: "Input your profession...")),
                        const SizedBox(height: 12),
                        Text(
                          "Password",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        TextField(
                            controller: controller.txtPassword,
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Input your password...")),
                        const SizedBox(height: 16),
                        ElevatedButton(
                            onPressed: () => controller.submit(),
                            child: const Text("Submit"))
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
