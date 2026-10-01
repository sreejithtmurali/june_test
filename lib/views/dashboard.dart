import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:june_test/service/user_service.dart';
import 'package:june_test/views/login.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  UserService userService = UserService();
  String mailid = '';
  Future<void> getdata() async {
    mailid = await userService.getEmail() ?? 'not available';
    setState(() {});
  }

  void logout() {
    userService.logout();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${mailid}"),
        actions: [
          IconButton(
            onPressed: () {logout();},
            icon: Icon(Icons.power_settings_new_outlined),
          ),
        ],
      ),
    );
  }
}
