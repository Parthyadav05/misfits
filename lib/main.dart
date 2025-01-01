import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:misfits/view/screens/user_homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

        theme: ThemeData(
          fontFamily: 'Lato', // Set default font family
        ),
      home: const UserHomepage()
    );
  }
}


