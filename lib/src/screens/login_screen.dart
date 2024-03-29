import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey <FormState>();
  String email = '';
  String password = '';

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
    validator: validateEmail,
    onSaved: (String value) {
      print(value);
      email = value;
    },
  );
} 

Widget passwordField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Password",
      
    ),
    obscureText: true,
    validator: validateEmail,
    onSaved: (String value) {
      print(value);
      password = value;
    },
  );

}

Widget submitButton(){
  return RaisedButton(
    onPressed: () {
      if (formKey.currentState.validate()) {
        formKey.currentState.save();
        print("Username:$email Password:$password");
      }
      // print("State reset");
    },
    child: Text('Login'),
    color: Colors.blue,
  );

}
}

