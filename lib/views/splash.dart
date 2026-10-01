import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:june_test/service/user_service.dart';
import 'package:june_test/views/dashboard.dart';
import 'package:june_test/views/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nav();
  }

  UserService userService = UserService();
  Future<void> nav() async {
    bool? islogin = await userService.isLoggedIN();
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => islogin == true ?
        Dashboard() : Login(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: FlutterLogo(size: 100)));
  }
}
