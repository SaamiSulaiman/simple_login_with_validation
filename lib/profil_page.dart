import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String nama;
  final String password;

  ProfilePage(this.nama, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyProfile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(nama),
          Text(password)
        ],
      ),
    );
  }
}