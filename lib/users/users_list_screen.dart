import 'package:flutter/material.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Text(
                    (index + 1).toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                title: Text((['Nizar', 'Pororo', 'John doe'].toList()
                      ..shuffle())
                    .first),
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 20),
    );
  }
}
