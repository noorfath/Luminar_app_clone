import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ExpansionDemo()));
}

class ExpansionDemo extends StatelessWidget {
  final items = [
    "Basic Information",
    "Parent's Information",
    "Personal Details",
    "Address",
    "Educational Details"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tiles with Editable Forms"),
      ),
      body: Column(
        children: List.generate(
          items.length,
              (index) => ExpansionTile(
            title: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: Text(
                  "${index + 1}",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                items[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            children: [
              BasicInfoForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class BasicInfoForm extends StatefulWidget {
  @override
  _BasicInfoFormState createState() => _BasicInfoFormState();
}

class _BasicInfoFormState extends State<BasicInfoForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: mobileController,
              decoration: InputDecoration(labelText: 'Mobile Number'),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            ElevatedButton(
              onPressed: () {
                // Process and save the form data as needed
                final name = nameController.text;
                final mobile = mobileController.text;
                final email = emailController.text;

                print('Name: $name');
                print('Mobile Number: $mobile');
                print('Email: $email');
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    super.dispose();
  }
}
