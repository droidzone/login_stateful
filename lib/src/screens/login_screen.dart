import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState  extends State<LoginScreen> {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Form(
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email address',
        hintText: 'you@gmail.com',
        
      ),
      keyboardType: TextInputType.emailAddress,
    );

  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter password',
        
        ),
      obscureText: true,
    );
  }

  Widget submitButton() {
    

    return RaisedButton(
      child: Text('Submit'),
      onPressed: () {
        print('Pressed');
      },
      color: Colors.blue,
    );
  }
}