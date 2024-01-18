import 'package:flutter/material.dart';
import 'package:trip_planing_app/screens/Home/home_screen.dart';
import 'package:trip_planing_app/screens/auth/Login_screen.dart';
import 'package:trip_planing_app/utilities/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://img.freepik.com/free-photo/beautiful-collage-travel-concept_23-2149232172.jpg?w=360&t=st=1703220092~exp=1703220692~hmac=0633d6419871d2438154a155736d5e05a5b9cebe78bd8bf2a832659486f8e8f4',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    const Text(
                      "Welcome to TrpZ",
                      style: TextStyle(
                        fontSize: 30,
                        color: kwhiteClr,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "The Journey is your home. Explore the world with Our Travel app and get the feeling like your own home.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kwhiteClr,
                        fontSize: 16,
                        height: 1.6,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 15),

                    // login buttons
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>const HomeScreen()));

                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kwhitClr,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                       
                                        
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network("https://lh3.googleusercontent.com/COxitqgJr1sJnIDe8-jiKhxDx1FrYbtRHKJ9z_hELisAlapwE9LUPh6fcXIfb5vwpbMl4xl9H9TRFPc5NOO8Sb3VSgIBrfRYvW6cUA", 
                            height: 30,width: 30),
                            const SizedBox(
                              width: 10
                      
                            ),
                            const Text("Continue with Google",
                            style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w600),
                            
                            )
                      
                          ],
                        )
                      ),
                    ),
                    const SizedBox(
                        height: 20,

                      ),
                        InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>const LoginScreen()));

                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kwhitClr,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                       
                                        
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network("https://t3.ftcdn.net/jpg/02/38/96/64/240_F_238966486_A5wEWiRNtuUm85Qxj5BM12hCDNrSS7yS.jpg", 
                            height: 35,width: 35),
                            const SizedBox(
                              width: 10
                      
                            ),
                            const Text("Continue with Email",
                            style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w600),
                            
                            )
                      
                          ],
                        )
                          
                          
                          
                        ),
                    ),
                      const SizedBox(
                        height: 20,

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>const HomeScreen()));
                        },
                        child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kwhitClr,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                                             
                                          
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Facebook_Logo_2023.png/900px-Facebook_Logo_2023.png", 
                            height: 30,width: 30),
                            const SizedBox(
                              width: 10
                        
                            ),
                            const Text("Continue with Facebook",
                            style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w600),
                            
                            )
                        
                          ],
                        )
                          
                          
                          
                        ),
                      ),
                       SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                        ),
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
