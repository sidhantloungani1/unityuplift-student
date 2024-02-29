import 'package:flutter/material.dart';
import 'package:student/screens/success.dart';
import '../../components/custom_btn.dart';

class ApplyForScholarshipPage extends StatefulWidget {
  const ApplyForScholarshipPage({Key? key}) : super(key: key);

  @override
  State<ApplyForScholarshipPage> createState() => _ApplyForScholarshipPageState();
}

class _ApplyForScholarshipPageState extends State<ApplyForScholarshipPage> {
  String valueChoose = "college";
  List<String> listItem = ["college", "Intermediate", "Bachelors"];

  String selectedScholarship = "JDC Fully Funded";
  List<String> scholarshipList = ["JDC Fully Funded", "Saylani Semester Fee Waiver", "Saylani Mass IT Course"];

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
              const Text(
                'Apply For Scholarship',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Increase the scholarship program',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  hintText: 'Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                
                decoration: const InputDecoration(
                  labelText: 'About',
                  hintText: 'Tell Us Breifly About You',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'CGPA',
                  hintText: 'Current CGPA',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Parmanent Address',
                  hintText: 'Write Your Parmanent Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField<String>(
                value: valueChoose,
                onChanged: (newValue) {
                  setState(() {
                    valueChoose = newValue!;
                  });
                },
                items: listItem.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Education Level',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField<String>(
                value: selectedScholarship,
                onChanged: (newValue) {
                  setState(() {
                    selectedScholarship = newValue!;
                  });
                },
                items: scholarshipList.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Select Scholarship',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'What Experience do you have',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                'Description',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 10),
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Write here',
                  hintText: 'Write details here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "${selectedDate.toLocal()}".split(' ')[0],
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Add another text field or dropdown here as needed
                ],
              ),
              const SizedBox(height: 15),
              CustomBtn(
                onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProcessCompleteScreen(),
                    ),
                  );
                },
                height: 60,
                width: 400.0,
                text: 'Apply Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
