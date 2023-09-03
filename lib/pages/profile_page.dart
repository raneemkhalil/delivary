import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Anonymous...', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black26, fontSize: 20),))
    );
  }
}
