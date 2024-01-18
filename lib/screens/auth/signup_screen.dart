
import 'package:flutter/material.dart';
import 'package:trip_planing_app/screens/auth/Login_screen.dart';
import 'package:trip_planing_app/utilities/colors.dart';


class SignUpScreen extends StatelessWidget {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage('https://img.freepik.com/free-vector/isolated-young-handsome-man-different-poses-white-background-illustration_632498-859.jpg?size=626&ext=jpg&ga=GA1.1.42334345.1692178467&semt=ais'),
                  ),
                  Positioned(
                    right: 5, 
                    bottom: 10,
                    child: Icon(Icons.add_a_photo),)
                ],
                ),
                SizedBox(height: 20,),
              TextField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Enter your fullname', 
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,),),
                ),
              ),
              SizedBox(height: 20,),
               TextField(
                controller: _userController,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Enter your username', 
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,),),
                ),
              ),
              SizedBox(height: 20,),
               TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Enter your Email', 
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,),),
                ),
              ),
              SizedBox(height: 20,),
               TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Enter your Password', 
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,),),
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
                  onTap: () {
                    
                  },
                  child: Text('Register', style: TextStyle(
                    fontWeight: FontWeight.bold,
                     fontSize :20
                    )),
                ),),),
                SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Already have an Account?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Text('Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                )
          
              ],)
          
            ]
          ),
        ),
      )
    );
  }
}