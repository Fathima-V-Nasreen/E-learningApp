import 'package:basics/faculty/Facultyaddassignment.dart';
import 'package:basics/faculty/FacultyBottomNavigation.dart';
import 'package:basics/faculty/Facultyaddquestionpaper.dart';
import 'package:basics/faculty/Facultyaddsyllabus.dart';
import 'package:basics/faculty/Facultyeditassignment.dart';
import 'package:basics/faculty/Facultyeditquestionpaper.dart';
import 'package:basics/faculty/Facultyeditstudymaterial.dart';
import 'package:basics/faculty/Facultyeditsyllabus.dart';
import 'package:basics/faculty/FacultyhomeScreen.dart';
import 'package:basics/faculty/Facultyloginn.dart';
import 'package:basics/student/studentlogin.dart';
import 'package:basics/faculty/Facultyverifystudents.dart';
import 'package:basics/faculty/Facultyaddstudymaterial.dart';
import 'package:basics/faculty/Facultyuploadicons.dart';
import 'package:basics/faculty/Facultyverifyassignment.dart';
import 'package:basics/faculty/Facultyviewassignment.dart';
import 'package:basics/faculty/Facultyviewquestionpaper.dart';
import 'package:basics/faculty/Facultyviewsyllabus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get pdfPath => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      
      home:
      
// Login(),
// HomeScreen(),
// BottomNavBarScreen(),
// StudentTableScreen(),
 ViewScreen(),

// AddStudyMaterial(),
// AddQuestionpaper(),
// AddSyllabus(),
// UploadAssignment(),

// EditStudyMaterial(),
// EditQuestionpaper(),
// EditSyllabus(),
// EditAssignment(),

// Verifyassignment(),

// AssignmentView(),
// QuestionPaperView(),
// SyllabusView(),
// TableView(),

//............................................students...............................................................

    
    );
}
}       