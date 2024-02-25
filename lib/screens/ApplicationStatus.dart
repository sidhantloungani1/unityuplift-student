import 'package:flutter/material.dart';
import 'package:student/utils/app_colors.dart';
import 'drawer_widget.dart';

class ApplicationStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),

      endDrawer: DrawerWidget(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Add the text "Application Status" here
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Application Status',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          buildApplicationCard(
            'Scholarship Application 1',
            'In Progress',
            Colors.blue,
          ),
          SizedBox(height: 24), // Increased gap
          buildApplicationCard(
            'Scholarship Application 2',
            'Accepted',
            Colors.green,
          ),
          SizedBox(height: 24), // Increased gap
          buildApplicationCard(
            'Scholarship Application 3',
            'Rejected',
            Colors.red,
          ),
        ],
      ),
    );
  }

  Widget buildApplicationCard(String title, String status, Color statusColor) {
    return Card(
      elevation: 5,
      shadowColor: Colors.grey.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 40.0), // Increased bottom padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16), // Increased gap
              ],
            ),
          ),
          // Positioned widget for the tag
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                status,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
         
          Positioned(
            bottom: 8,
            left: 8,
            child: ElevatedButton(
              onPressed: () {
               
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                elevation: 0, 
                minimumSize: Size(80, 40), 
              ),
              child: const Text(
                'Details',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
