import 'package:flutter/material.dart';
import 'package:student/screens/auth/Login_Screen.dart';
import 'package:student/screens/auth/Registration.dart';
import '../../components/custom_btn.dart';


// import '../../components/drawer.dart';


class MainPage extends StatelessWidget {
  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
              const SizedBox(height: 10),
            CustomBtn(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationScreen(),
                    ),
                  );
                },
                // color: AppColors.primaryColor, // Set the desired color
                height: 50,
                width: 300.0, // Set the desired width
                text: 'SignUp',

                // You can customize the text here
              ),
            const SizedBox(height: 20),

            // 2

            CustomBtn(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                // color: AppColors.primaryColor, // Set the desired color
                height: 50,
                width: 300.0, // Set the desired width
                text: 'Login',

                // You can customize the text here
              ),
            const SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
