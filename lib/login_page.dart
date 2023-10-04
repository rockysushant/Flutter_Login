import 'package:flutter/material.dart';
import 'package:login/components/my_text_field.dart';
import 'package:login/components/square_title.dart';
import 'components/my_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign in user
  void signInUser() {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height:40),
              const Icon(
                Icons.lock,
                size: 100,
                color: Colors.black,
              ),


              const SizedBox(height: 50),
              const Text(
                'Welcome Back, you\'ve been Missed ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),


              const SizedBox(height: 25),

              // EDIT TEXT

              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 10),

              // EDIT TEXT 2

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),


              const SizedBox(height: 15),


              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color(0xFF1C1515)),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 10),


              //LOGIN IN BUTTON

              MyButton(
                onTap: signInUser,
              ),



              const SizedBox(height: 25),



              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or Continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 50),


              // IMAGES

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10, // Add space between the SquareTitle widgets
                  ),
                  SquareTitle(imagePath: 'lib/images/google.png'),
                  SizedBox(
                    width: 10, // Add space between the SquareTitle widgets
                  ),
                  SquareTitle(imagePath: 'lib/images/apple.png'),
                ],
              ),



              const SizedBox(height: 50),



              // REGISTER NOW TEXT

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
