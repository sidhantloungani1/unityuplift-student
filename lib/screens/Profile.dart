import 'package:flutter/material.dart';
import 'package:student/utils/app_colors.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context)
                      .pop(); 
                },
              ),
              title:
                  Text('Profile Page', style: TextStyle(color: Colors.white)),
              backgroundColor: AppColors.primaryColor,
            ),
            Container(
              height: 220,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 4.0,
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/profile.jpg', 
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          const Text(
                            'Sidhant Kumar',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Student Details',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  StudentDetailItem(
                    label: 'University',
                    value: 'DHA SUFFA',
                  ),
                  Divider(height: 16.0, color: Colors.grey),
                  StudentDetailItem(
                    label: 'Batch',
                    value: 'Computer Science, Batch of 2024',
                  ),
                  Divider(height: 16.0, color: Colors.grey),
                  StudentDetailItem(
                    label: 'GPA',
                    value: '3.2',
                  ),
                  Divider(height: 16.0, color: Colors.grey),
                  StudentDetailItem(
                    label: 'Contact',
                    value: 'sidhant.loungani@gmail.com',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentDetailItem extends StatelessWidget {
  final String label;
  final String value;

  StudentDetailItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
