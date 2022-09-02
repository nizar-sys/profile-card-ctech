import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 23),
            child: Text('Profile'),
          ),
        ),
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
                const Text(
                  'Emnizaar',
                  style: TextStyle(
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
              subtitle: Text(
                'Muhamad Nizar',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
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
              subtitle: Text(
                'nizarid04@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
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
              subtitle: Text(
                'freelancer / nganggur',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
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
              subtitle: Text(
                'nganggur / ngoding',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton.icon(
              icon: const Icon(Icons.home, size: 16),
              label: const Text('Back to home'),
              onPressed: () => {Navigator.pop(context)},
            ),
          )
        ],
      ),
    );
  }
}
