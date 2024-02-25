import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:student/screens/auth/Login_Screen.dart';
import '../../components/custom_btn.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    
                  ],
                ),
                child: Image.asset('assets/images/logo.png'),
              ),
              

              const Text(
                'Personal Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Organization Name',
                  hintText: "Organization Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                
                decoration: const InputDecoration(
                  labelText: 'Mission and Objectives',
                  hintText: "Mission and Objectives",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Address',
                  hintText: "Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Contact Info',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  InkWell(
                    onTap: () {
                      // Add functionality for adding email field
                    },
                    child: const Text('Email'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      // Add functionality for adding phone field
                    },
                    child: const Text('Phone'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  hintText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                'Registration Certificate',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              // Icon, heading, browse link, supported formats tagline
              const SizedBox(
                height: 10,
              ),

              Center(
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  padding: const EdgeInsets.all(6),
                  color: const Color(0xff384EB7),
                  child: GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.cloudArrowUp,
                            size: 30, // Adjust the size as needed
                          ),
                        ),
                        const Text(
                          'Upload your file here',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal),
                        ),
                        TextButton(
                          onPressed: () {
                            // Add "Do it later" functionality
                          },
                          child: const Text('Browse'),
                        ),
                        const Text(
                          'Supported formats: JPEG, PNG, GIF, MP4, PDF, PSD, AI, Word, PPT',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                'Uploading File',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              // File upload progress bar and details

              const SizedBox(height: 10.0),
              CustomBtn(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                height: 50,
                width: 380.0,
                text: 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
