import 'package:flutter/material.dart';
import 'package:simpleloginwithvalidation/profil_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  String username, password;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login With Validation'),
        ),
        body: Padding(
        padding: const EdgeInsets.all(8.0),
    child: Form(
    key: _formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    TextFormField(
    controller: usernameController,
    decoration: InputDecoration(hintText: 'Username'),
    validator: (value){
    if(value.isEmpty){
    return 'Username Tidak Boleh Kosong';
    }
    if(value.length < 6){
    return 'Username Minimal 6 Karakter';
    }
    return null;
    },
    ),
    TextFormField(
    controller: passwordController,
    obscureText: true,
    maxLength: 10,
    maxLengthEnforced: true,
    decoration: InputDecoration(hintText: 'Password'),
    validator: (value){
    if (value.isEmpty){
    return 'Password Tidak Boleh Kosong';
    }
    return null;
    },
    ),
    SizedBox(height: 32),
    MaterialButton(
    height: 50.0,
    minWidth: 80.0,
    color: Colors.blue,
    textColor: Colors.white,
    child: Text('Login'),
    onPressed: (){
// cek apakah username kosong
// cek apakah password kurang dari 6

    username = usernameController.text;
    password = passwordController.text;

    if (_formKey.currentState.validate()) {
    if(username != 'DaffaDazuqo'){
    print('Username Tidak Ditemukan');
    } else if (password.length < 6) {
    print('Password Minimal 6 Karakter');
    }else{
//pindah halaman lain
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProfilePage(username, password)));
    }
    }
    },
    )
    ],
    )),
        ),
    );
  }
}
