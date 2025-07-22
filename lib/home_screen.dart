import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: Center(
        child: Text(
          'Bienvenido, ${user?.email ?? 'Usuario'}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}