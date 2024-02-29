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
              Image.asset('assets/images/logo.png'),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              // Email and Password 
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

              const SizedBox(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Forget Password?'),
                ),
              ),

              // Login button 
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

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinkedButton(
                    icon: FontAwesomeIcons.facebook,
                    color: Colors.blueAccent,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  LinkedButton(
                    icon: FontAwesomeIcons.google,
                    color: Colors.red,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  LinkedButton(
                    icon: FontAwesomeIcons.twitter,
                    color: Colors.lightBlue,
                    onPressed: () {},
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    title: 'Don\'t have an account',
                  ),
              
              
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


class LinkedButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  const LinkedButton({
    Key? key,
    required this.icon,
    required this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: color,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            icon,
            size: 30,
            color: color,
          ),
        ),
      ),
    );
  }
}