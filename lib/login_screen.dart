import 'package:flutter/material.dart';
import 'package:salad_works/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.no_food_rounded,
                  size: 80,
                  color: Colors.greenAccent,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome to Saladworks!',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Oxygen'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Let\'s enjoy a fresh salad dish!',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightGreen,
                      fontFamily: 'Oxygen'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      "Start Here",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontFamily: 'Oxygen'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
