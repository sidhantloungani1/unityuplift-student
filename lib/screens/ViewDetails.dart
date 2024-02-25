import 'package:flutter/material.dart';
import 'package:student/screens/apply.dart';
import 'drawer_widget.dart';

class ViewDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),

      endDrawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200, // Adjust the height as needed
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              
            ),
            const Divider(height: 1, color: Colors.grey), // Divider between sections
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  ScholarshipDetailSection(
                    label: 'Scholarship Name',
                    value: 'XYZ Scholarship',
                  ),
                  ScholarshipDetailSection(
                    label: 'Provider',
                    value: 'XYZ Organization',
                  ),
                  ScholarshipDetailSection(
                    label: 'Application Deadline',
                    value: 'February 28, 2023',
                  ),
                  ScholarshipDetailSection(
                    label: 'Eligibility Criteria',
                    value:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  ),
                  // Add more ScholarshipDetailSection widgets as needed
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            const Wrap(
              spacing: 8.0, // Adjust the spacing between tags
              runSpacing: 8.0, // Adjust the run spacing (spacing between lines)
              children: [
                ScholarshipTagButton(icon: Icons.school, label: 'Education'),
                ScholarshipTagButton(icon: Icons.group, label: 'Community'),
                ScholarshipTagButton(icon: Icons.star, label: 'Merit-Based'),
                ScholarshipTagButton(icon: Icons.language, label: 'Language'),
                ScholarshipTagButton(icon: Icons.sports_soccer, label: 'Sports'),
                // Add more ScholarshipTagButton widgets as needed
              ],
            ),
            const SizedBox(height: 16),
            
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplyForScholarshipPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Apply', style: TextStyle(color: Colors.white)),
                
              ),
              
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class ScholarshipDetailSection extends StatelessWidget {
  final String label;
  final String value;

  const ScholarshipDetailSection({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class ScholarshipTagButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ScholarshipTagButton({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), 
      child: ElevatedButton(
        onPressed: () {
          // Handle tag button click
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.blue, size: 18),
            const SizedBox(width: 8),
            Text(label, style: TextStyle(color: Colors.black, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
