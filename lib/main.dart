import 'package:flutter/material.dart';
import 'package:flutter_application_1/page2.dart';

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

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Text("About Me",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
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
                      child: Text('see more')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
