import 'package:flutter/material.dart';
import 'package:student/screens/ApplicationStatus.dart';
import 'package:student/screens/ScholarshipPrograms.dart';
import 'package:student/screens/apply.dart';
import '../../components/custom_btn.dart';
import 'drawer_widget.dart';

// import '../../components/drawer.dart';


class DashboardScreen extends StatelessWidget {
  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate to the previous screen
              Navigator.of(context).pop();
            },
          ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.person),
        //     onPressed: () {
        //        _scaffoldKey.currentState?.openDrawer();
        //     },
        //   ),
        // ],
      ),

       endDrawer: DrawerWidget(),
      
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
                      builder: (context) => ScholarshipProgramsScreen(),
                    ),
                  );
                },
               
                height: 50,
                width: 300.0, // Set the desired width
                text: 'Scholarship Programs',

                
              ),
            const SizedBox(height: 20),

            // 2

            CustomBtn(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplyForScholarshipPage(),
                    ),
                  );
                },
                // color: AppColors.primaryColor, // Set the desired color
                height: 50,
                width: 300.0, // Set the desired width
                text: 'Apply For Scholarship',

                // You can customize the text here
              ),
            const SizedBox(height: 20),
            CustomBtn(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  ApplicationStatusScreen(),
                    ),
                  );
                },
                // color: AppColors.primaryColor, // Set the desired color
                height: 50,
                width: 300.0, // Set the desired width
                text: 'Application Status',

              ),
          ],
        ),
      ),
    );
  }
}
