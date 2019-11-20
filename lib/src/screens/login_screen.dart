import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey <FormState>();

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
            submitButton()
          ],
        ),
      )
    );
  }

  Widget emailField() {
    return TextFormField(
    decoration: InputDecoration(
      labelText: "Email address",
      hintText: 'you@address.com'
    ),
    keyboardType: TextInputType.emailAddress,
  );
} 

Widget passwordField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Password",
      
    ),
    obscureText: true,
  );

}

Widget submitButton(){
  return RaisedButton(
    onPressed: () {
      formKey.currentState.reset();
      print("State reset");
    },
    child: Text('Login'),
    color: Colors.blue,
  );

}
}

