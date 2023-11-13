import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';

class UserPage extends StatelessWidget {
  final String displayName;
  final String email;

  UserPage(this.displayName, this.email, {Key? key}) : super(key: key);

  FirebaseAuth auth = FirebaseAuth.instance;

  // Cerrar sesión de Google
  void signOut() async {
    await auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            this.displayName,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 20),
          Text(
            email,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: signOut,
            child: Text("Cerrar sesión"),
          ),
        ],
      ),
    );
  }
}