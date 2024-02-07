import 'package:flutter/material.dart';
import "colors/colors.dart";
import 'components/textfield.dart';
import 'components/button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign the user in 

  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightBrown,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              SizedBox(height: 200), 
              // Login text
              // optional logo or something around here
              Text(
                'Login',
                style: TextStyle(
                  color: AppColors.grayBlue,
                  fontSize: 50,
                ),
              ),

              SizedBox(height: 10), 

              // email field / alternatively can do username field
              myTextField(
                // need a controller here that i have commented out
                // controller: emailController,
                hintText: "Email", 
                obscureText: false,
              ),

              SizedBox(height: 10), 

              // password field

              myTextField(
                // need a controller here that i have commented out
                // controller: passwordController,
                hintText: "Password", 
                obscureText: true,
              ),

              SizedBox(height: 10), 

              // forgot password
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: AppColors.cloudBlue),
                        ),
                    ],
                  ),
                ),

                SizedBox(height: 20), 

                // sign in button
                Button(
                  text: 'Sign In',
                  // onTap: signUserIn,
                ),

                SizedBox(height: 200),
                // or continue with i am not adding this unless we discuss something else



              // line above the sign up
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: AppColors.cloudBlue,
                    
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),
              // not a member create an account 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: AppColors.cloudBlue),
                    ),
                    SizedBox(width: 4),
                    // GestureDetector(
                      // onTap: widget.onTap,
                      // child: 
                      Text(
                        'Sign up',
                        style :TextStyle(
                          color: AppColors.skyBlue,
                          fontWeight: FontWeight.bold,
                        ),
                        
                      ),

                    // ),
                  ],
                ),
                SizedBox(height: 20),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
