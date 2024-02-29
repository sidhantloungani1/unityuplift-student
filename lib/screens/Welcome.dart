import 'package:flutter/material.dart';
import 'package:student/screens/MainPage.dart';


class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/welcome.jpeg"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              
            ),
            
          ),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the next screen when the avatar is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                child: const CircleAvatar(
                  backgroundColor: Color(0xFF4350AF),
                  radius: 30.0,
                  child: Icon(Icons.arrow_forward,
                      size: 30.0, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome!',
                style: TextStyle(
                  color: Color(0xFF4350AF),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Explore the App',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Pellentesque nec diam nec urna accumsan lacinia.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF4350AF),
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}