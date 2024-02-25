import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:student/screens/Dashboard.dart';
import 'package:student/screens/auth/Registration.dart';
//import 'package:unity_uplift/screens/auth/Registeration.dart';
import '../../components/custom_btn.dart';
import '../../components/custom_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo in the center
              Image.asset('assets/images/logo.png'),
              const SizedBox(height: 10),

              // Heading of login on the left
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              // Email and Password text fields
              const SizedBox(
                height: 16.0,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: "enter your email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(12.0)),
              ),
              const SizedBox(
                height: 8.0,
              ),
           //   CustomTextfield(text: 'Username'),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: "enter your password",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    filled: true,
                    contentPadding: EdgeInsets.all(12.0)),
              ),
              // Forget password text on the left
              const SizedBox(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Add forget password logic here
                  },
                  child: const Text('Forget Password?'),
                ),
              ),

              // Login button in the center
              const SizedBox(height: 10.0),
              CustomBtn(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  DashboardScreen()),
                      );
                },
                
                height: 60,
                width: 400.0, 
                text: 'Login',

                
              ),

              
              const SizedBox(height: 10),
              const Text('Or connect with'),
              // Facebook, Google, Twitter buttons
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.facebook,
                      size: 30, // Adjust the size as needed
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.google,
                      size: 30, 
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.twitter,
                      size: 30, 
                    ),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    title: 'Don\'t have an account',
                  ),
                  // const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  RegistrationScreen()),
                      );
                    },
                    child: const Text('Sign Up'),
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