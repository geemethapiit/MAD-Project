import 'package:flutter/material.dart';
import 'package:madproject/components/LogForm.dart';
import 'package:madproject/components/SignUpForm.dart';

class Auth extends StatefulWidget{
  Auth({Key? key}) :super(key: key);

  @override
  State<Auth> createState() => AuthState();
}

class AuthState extends State<Auth> {

  bool signIn = true;

  void toggleForm() {
    setState(() {
      signIn = !signIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
    ),
             child: SafeArea(child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget> [
               Image(image: AssetImage('assets/images/taking-care-pets-diabetes.jpg'),
                 fit: BoxFit.cover,
    ),
          SizedBox(height: 25,),
        Text(
          'Welcome to Sky Pet',
          style: TextStyle(
            fontSize: 36,
            fontWeight:FontWeight.bold,
          ),
        ),
          SizedBox(height: 25,),
          Text(
            signIn ? 'Sign in to your account' :'You can easily sign up, and connect to the Sky Pet',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25,),
          signIn? LogForm() : SignUpForm(),
          SizedBox(height: 25,),
          signIn ?
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontSize:16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
              : Container(),
                 Center(
                   child: TextButton(
                     onPressed: toggleForm,
                     child: Text(
                       signIn ? 'Don\'t have an account? Sign Up' : 'Already have an account? Sign In',
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                         color: Colors.black,
                       ),
                     ),
                   ),
                 )
          ],
         ),
        ),
       ),
      )
     );
    }
  }