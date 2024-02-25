import 'package:flutter/material.dart';
import '../../components/custom_btn.dart';
import 'package:student/screens/Dashboard.dart';

class ProcessCompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.account_circle),
        //     onPressed: () {
        //       // Handle profile icon click
        //     },
        //   ),
        // ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/completeprocess.png",
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              Text(
                'Your application is in process. You will be notified!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              CustomBtn(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  DashboardScreen(),
                    ),
                  );
                },
                height: 50,
                width: 50.0,
                text: 'Done',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
