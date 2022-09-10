import 'package:flutter/material.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List names = [
      'nizar',
      'john doe',
      'pororo',
      'nizar',
      'john doe',
      'pororo',
      'nizar',
      'john doe',
      'pororo',
      'nizar',
      'john doe',
      'pororo',
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Lists'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            for (var name in names)
              ListTile(title: Text(name), leading: const Icon(Icons.numbers))
          ],
        ));
  }
}
