import 'package:flutter/material.dart';
import 'package:radish/services/authservice.dart';

class Register extends StatefulWidget {

  const Register({
    Key ? key,
  }): super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State < Register > {

  // final AuthService _auth=AuthService();

  String email = '';
  String passwd = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Register",
          ),
          centerTitle: true,
          actions: < Widget > [
            TextButton.icon(onPressed: () {
            }, icon: const Icon(Icons.person, color: Colors.black, ), label: Text("Sign In", style: TextStyle(color: Colors.black, ), ))
          ],
        ),
        body: Form(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: < Widget > [
                const Text("Enter an Email Address", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, ), ),
                SizedBox(height: 30, width: 200,
                  child: TextFormField(

                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ), ),
                Divider(thickness: 3.0, color: Colors.purple[100], ),
                const Text("Enter the Password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, ), ),
                SizedBox(height: 30, width: 200,
                  child: TextFormField(
                    obscureText: true,
                    onChanged: (val) {
                      setState(() => passwd = val);
                    },
                  ),
                ),
                Divider(thickness: 3.0, color: Colors.purple[100], ),
                ElevatedButton(
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, backgroundColor: Colors.purple, ),
                  ),
                  onPressed: () async {
                    print(email + ":" + passwd);
                  },
                ),

              ],
            ),
          ),
        ),
        backgroundColor: Colors.purple[100],
      ),
    );
  }
}