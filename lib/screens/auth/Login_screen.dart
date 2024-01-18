


import 'package:flutter/material.dart';
import 'package:trip_planing_app/screens/auth/signup_screen.dart';
import 'package:trip_planing_app/utilities/colors.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Enter your Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                   borderSide: BorderSide.none,
                ),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width -40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
              ),
              child: Center(child: InkWell(
                onTap: (){
                  print('you are now logged in');
                },
                child: Text('Login', style: TextStyle(
                  fontWeight: FontWeight.bold,
                   fontSize :20
                  )),
              )),
             
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Need an Account?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                },
                child: Text('Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
              )

            ],)
          ],
        ),
      ),
    );
  }
}
