import 'package:flutter/material.dart';
import 'package:madproject/components/customButton.dart';
import 'package:madproject/screens/HomePage.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final formkey = GlobalKey<FormState>();
  final nameControler =TextEditingController();
  final emailControler = TextEditingController();
  final passControler = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(key: formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        TextFormField(
        controller: nameControler,
        keyboardType: TextInputType.text,
        cursorColor: Colors.lightBlueAccent,
        decoration: InputDecoration(
          labelText: 'Username',
          prefixIcon: Icon(Icons.person_outlined),
          prefixIconColor: Colors.lightBlueAccent,
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(height: 25,),
          TextFormField(
            controller: emailControler,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.lightBlueAccent,
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email_outlined),
              prefixIconColor: Colors.lightBlueAccent,
              border: OutlineInputBorder(),
            ),
      ),
       SizedBox(height: 25,),
       TextFormField(
        controller: passControler,
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Colors.lightBlueAccent,
        obscureText: ! passwordVisible,
        decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: const Icon(Icons.lock_outline),
            prefixIconColor: Colors.lightBlueAccent,
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                passwordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  passwordVisible = ! passwordVisible;
                });
              },
            )
        ),
      ),
      SizedBox(height: 25,),
          ComButton(width: double.infinity, title: 'Sign Up', disable: false, onPressed: () {
            setState(() {
              Navigator.pushReplacementNamed(context, '/main');
            });
          }),
        ]
        ),
  );
      }
}

