import 'package:flutter/material.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/login.dart'; // Ensure correct casing for class name

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DataDiri',
      home: Main(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  bool _isLoggedIn = false; 

  void _handleLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login(onLoginSuccess: () {
          setState(() {
            _isLoggedIn = true; 
          });
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataDiri'),
        actions: [
          TextButton(
            onPressed: _handleLogin,
            child: Text(
              'Login', 
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "assets/images/bg.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 120,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.png"),
                  radius: 100,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "Muhamad Basuki Raharjo",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text("Frontend Developer"),
                  SizedBox(height: 20),
                  Text(
                    "About Me",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Halo, Nama Saya Muhamad Basuki Raharjo Saya Adalah Frontend Developer",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w100),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    },
                    child: Text('See more'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
