import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final String email; 

  const Dashboard({Key? key, required this.email}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgg.jpg'), 
            fit: BoxFit.cover, 
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Text(
                "Selamat datang: $email", 
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white, 
                ),
                textAlign: TextAlign.center, 
              ),
              SizedBox(height: 20), 
              Text(
                "Berhasil Login",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, 
                ),
                textAlign: TextAlign.center, 
              ),
              SizedBox(height: 40), // Space before the button
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Kembali"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
