import 'package:flutter/material.dart';
import 'package:student/screens/ViewDetails.dart';
import 'package:student/screens/apply.dart';
import 'package:student/utils/app_colors.dart';
import 'drawer_widget.dart';
import '../../components/custom_btn.dart';

class ScholarshipProgramsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Scholarship Programs',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Search
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search for scholarships...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),

            Expanded(
              child: ListView(
                children: [
                  ScholarshipCard(),
                  const SizedBox(height: 16),
                  ScholarshipCard(),
                  const SizedBox(height: 16),
                  ScholarshipCard(),
                  const SizedBox(height: 16),
                  ScholarshipCard(),
                  const SizedBox(height: 16),
                  ScholarshipCard(),
                  // Add more ScholarshipCard widgets as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScholarshipCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Scholarship Name',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Provider: JDC ',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBtn(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ApplyForScholarshipPage(),
                    ),
                  );
                },
                color: AppColors.primaryColor,
                textColor: AppColors.secondaryColor,
                height: 35,
                width: 100.0,
                text: 'Apply',
                fontSize: 14,
              ),
              const SizedBox(width: 8),
              CustomBtn(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewDetailsScreen(),
                    ),
                  );
                },
                color: const Color.fromARGB(255, 230, 225, 225),
                textColor: AppColors.primaryColor,
                height: 35,
                width: 100.0,
                text: 'View Details',
                fontSize: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
