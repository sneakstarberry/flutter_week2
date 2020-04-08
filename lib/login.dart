import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2020/03/31/05/41/phone-4986359__340.jpg',
                height: screenWidth / 2,
                width: screenWidth / 2,
              ),
              SizedBox(height: 20),
              Text("Login Page",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              TextField(
                controller: _usernameController,
                onSubmitted: (String text) {
                  _usernameController.clear();
                },
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Username',
                ),
              ),
              TextField(
                controller: _passwordController,
                onSubmitted: (String text) {
                  _passwordController.clear();
                },
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Login'),
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
