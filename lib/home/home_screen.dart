import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            onPressed: () => {Navigator.pushNamed(context, 'profile')},
            icon: const Icon(Icons.person_off_outlined),
            tooltip: 'My profile',
          ),
        ],
      ),
      body: const Center(
        child: Text('cTech apps home'),
      ),
    );
  }
}
