import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/AkunBaru/daftar_awal.dart';
import 'package:pbl/Login/setupaccount.dart';
import 'package:pbl/SandiBaru/lupakatasandi.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SetupAccount()),
      );
    } catch (e) {
      print("Login failed: $e");
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Login Failed"),
            content: Text("Incorrect email or password. Please try again."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the alert dialog
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appPutih,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: mediaQuery.size.height * 0.05),
              Text(
                'Masuk',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: mediaQuery.size.height * 0.1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appGrey2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appGrey2),
                    ),
                    hintText: "Email",
                    fillColor: appPutih,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.size.height * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appGrey2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appGrey2),
                    ),
                    hintText: "Kata Sandi",
                    fillColor: appPutih,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.size.height * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: GestureDetector(
                  onTap: signIn,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: appHijau,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "masuk",
                        style: TextStyle(
                          color: appPutih,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LupaKataSandi(),
                    ),
                  );
                },
                child: const Text(
                  'Lupa Kata Sandi?',
                  style: TextStyle(
                    color: appHijau,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum punya akun?",
                    style: TextStyle(color: appGrey2, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Daftar(),
                        ),
                      );
                    },
                    child: const Text(
                      "Mendaftar",
                      style: TextStyle(
                        color: appHitam,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
