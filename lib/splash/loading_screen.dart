import 'package:flutter/material.dart';
import 'package:prof_card/menu/menu_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: const MenuScreen(),
      title: const Text(
        'Welcome In CTech Apps',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.network(
          'https://th.bing.com/th/id/R.92c8a6440db85163ffd6dc1bf4f024db?rik=EmLEW2LWROImsA&riu=http%3a%2f%2fpngimg.com%2fuploads%2fandroid_logo%2fandroid_logo_PNG32.png&ehk=8XVRvF8elI1X5mqua689gyfU9c7yP%2fvZuvHdcOPPptM%3d&risl=&pid=ImgRaw&r=0'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}
