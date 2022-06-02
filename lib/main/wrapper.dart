import 'package:flutter/material.dart';
import 'package:radish/main/front_page.dart';
import 'package:radish/services/register.dart';
import 'package:radish/services/signin.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final FrontPage _frontPage = new FrontPage();
    if (_frontPage.reqLogin = true) {
      return SignIn();
    } else if (_frontPage.reqSignup = true) {
      return Register();
    } else {
      return FrontPage();
    }
  }
}
