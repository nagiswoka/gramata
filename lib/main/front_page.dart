import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  bool reqLogin = false;
  bool reqSignup = false;
  FrontPage({Key? key}) : super(key: key);
  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  final FrontPage _frontPage = new FrontPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Gramata"),
            foregroundColor: Colors.white,
            backgroundColor: Colors.purple,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Get Started"),
                TextButton(onPressed: setReqLogin, child: Text("Log in")),
                TextButton(
                  onPressed: setReqSignup,
                  child: Text("Sign up"),
                ),
              ],
            ),
          )),
    );
  }

  void setReqLogin() {
    _frontPage.reqLogin = true;
    print("clicked");
  }

  void setReqSignup() {
    _frontPage.reqSignup = true;
  }
}
