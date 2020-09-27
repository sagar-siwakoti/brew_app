import 'package:brew_coffee/models/user.dart';
import 'package:brew_coffee/screens/authenticate/authenticate.dart';
import 'package:brew_coffee/screens/home/home.dart';
import 'package:brew_coffee/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    // return either the Home or Authenticate widget
    if(user==null){
      return Authenticate();
    }else{
      return Home();
    }

  }
}