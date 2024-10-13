import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';

class Login extends StatelessWidget {
  final VoidCallback onLoginSuccess;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Login({Key? key, required this.onLoginSuccess}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg1.png'), 
                fit: BoxFit.cover, 
              ),
            ),
          ),
          // Login Form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, 
                    ),
                  ),
                  SizedBox(height: 20), 
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(), 
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200], 
                    ),
                  ),
                  SizedBox(height: 20), 
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20), 
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                    onPressed: () {
                      if (_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
                        onLoginSuccess();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(
                              email: _emailController.text, 
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter valid email and password")),
                        );
                      }
                    },
                    child: Text("Login"),
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
