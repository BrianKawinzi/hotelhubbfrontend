import 'package:flutter/material.dart';
import 'package:hotelhubb/Components/MyButton.dart';
import 'package:hotelhubb/Components/NormalTF.dart';
import 'package:hotelhubb/Components/PasswordTF.dart';


class LoginScreen extends StatelessWidget {

  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //welcome back text
                Text(
                  'Welcome back you\'ve been missed',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 25),

                //username textfield
                NormalTF(
                  controller: emailController, 
                  hintText: 'Enter your Email', 
                  obscureText: false
                ),
                 const SizedBox(height: 10),

                //password textfield
                PasswordTF(
                  controller: passwordController, 
                  hintText: 'Enter your Password'
                ),
                 const SizedBox(height: 10),

                //forgot password text
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/forgot');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ),

                 const SizedBox(height: 25),

                //signin  button
                MyButton(
                  onTap: signUserIn, 
                  buttonText: "Login"
                ),
                 const SizedBox(height: 50),

                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                          'Or continue with',
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

                //google or apple sign in

                //not a member register now text
              ],
            ),
          ),
        ),
      ),

      
    );
  }
}