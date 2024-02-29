import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:student/screens/ApplicationStatus.dart';
import 'package:student/screens/ScholarshipPrograms.dart';
import 'package:student/screens/apply.dart';
import '../../components/custom_btn.dart';
import 'drawer_widget.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      endDrawer: DrawerWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40,),
          SizedBox(
            height: 200,
            child: CarouselSlider(
              items: [
                Image.asset('assets/images/slider1.jpg', fit: BoxFit.cover),
                Image.asset('assets/images/slider2.jpg', fit: BoxFit.cover),
                Image.asset('assets/images/slider3.jpg', fit: BoxFit.cover),
              ],
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircularIconButton(Icons.school),
                _buildCircularIconButton(Icons.library_books),
                _buildCircularIconButton(Icons.account_balance),
                _buildCircularIconButton(Icons.local_library),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomBtn(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScholarshipProgramsScreen(),
                          ),
                        );
                      },
                      height: 70,
                      width: 300.0,
                      text: 'Scholarship Programs',
                    ),
                    const SizedBox(height: 20),
                    CustomBtn(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ApplyForScholarshipPage(),
                          ),
                        );
                      },
                      height: 70,
                      width: 300.0,
                      text: 'Apply For Scholarship',
                    ),
                    const SizedBox(height: 20),
                    CustomBtn(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ApplicationStatusScreen(),
                          ),
                        );
                      },
                      height: 70,
                      width: 300.0,
                      text: 'Application Status',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircularIconButton(IconData icon) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.8),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(icon, size: 30),
            color: Colors.white,
            onPressed: () {
              // Handle icon tap
            },
          ),
        ),
      ),
    );
  }
}
