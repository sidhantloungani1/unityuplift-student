import 'package:flutter/material.dart';
import 'package:student/screens/Dashboard.dart';
import 'package:student/screens/History.dart';
import 'package:student/screens/MainPage.dart';
import 'package:student/screens/Profile.dart';
import 'package:student/screens/Settings.dart';
import 'package:student/utils/app_colors.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(height: 8),
                Text(
                  'Sidhant Kumar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('View Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('History'),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  ScholarshipHistoryPage(),
                    ),
                  );
            },
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Dashboard'),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  DashboardScreen(),
                    ),
                  );
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  SettingsPage(),
                    ),
                  );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  MainPage(),
                    ),
                  );
            },
          ),
        ],
      ),
    );
  }
}
