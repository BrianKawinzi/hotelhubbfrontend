import 'package:flutter/material.dart';
import 'package:hotelhubb/Components/MyButton.dart';
import 'package:hotelhubb/Components/NormalTF.dart';
import 'package:hotelhubb/Components/PasswordTF.dart';
import 'package:hotelhubb/Components/SquareTile.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  //controllers 
  final hotelnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //sign up method
  void SignUserUp() {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Welscome to hotelhubb
                Text(
                  'Welcome to HotelHubb!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 25),


                //Hotelname textfield
                NormalTF(
                  controller: hotelnameController, 
                  hintText: 'Hotel Name', 
                  obscureText: false
                ),

                const SizedBox(height: 10),

                //email textfield
                NormalTF(
                  controller: emailController, 
                  hintText: 'Email', 
                  obscureText: false
                ),


                const SizedBox(height: 10),

                //password textfield
                PasswordTF(
                  controller: passwordController, 
                  hintText: 'Password'
                ),

                const SizedBox(height: 10),

                //confirm password textfield
                PasswordTF(
                  controller: confirmPasswordController, 
                  hintText: 'Confirm Password'
                ),

                const SizedBox(height: 20),

                //register button
                MyButton(
                  onTap: SignUserUp, 
                  buttonText: "Agree and Register"
                ),

                const SizedBox(height: 50),

                //or sign up with
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
                          'Or Sign Up with',
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

                //google or apple sign up buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                    //google button
                    SquareTile(imagepath: 'lib/assets/google.png'),

                    SizedBox(width: 25),

                    //apple button

                    SquareTile(imagepath: 'lib/assets/apple.png')

                  ],
                ),
                const SizedBox(height: 10),

                //Already a member login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a Member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),

                    const SizedBox(width: 4),

                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      }, 
                      child: Text(
                        'Login now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}