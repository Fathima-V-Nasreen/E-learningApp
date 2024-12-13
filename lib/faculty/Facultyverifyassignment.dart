import 'package:flutter/material.dart';

class Verifyassignment extends StatefulWidget {
   Verifyassignment({super.key});

  @override
  State<Verifyassignment> createState() => _VerifyassignmentState();
}

class _VerifyassignmentState extends State<Verifyassignment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Uploads'),
        ),
        body: const VerifyAssignment(),
      ),
    );
  }
}

class VerifyAssignment extends StatelessWidget {
  const VerifyAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Name: John Doe',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Roll No: 12345',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              const Text(
                'Submitted File: file.pdf',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensures buttons are spaced apart
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Logic to view the uploaded file
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Viewing file...')),
                      );
                    },
                    child: const Text('View'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Logic to verify the uploaded file
                      ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(content: Text('File verified!')),
                      );
                    },
                    child: const Text('Verify'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Correct usage of color for ElevatedButton
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
