import 'package:flutter/material.dart';

class AssignmentView extends StatefulWidget {
  @override
  _AssignmentViewState createState() => _AssignmentViewState();
}

class _AssignmentViewState extends State<AssignmentView> {
  // Sample data
  List<Map<String, String>> tableData = [
    {
      "No": "1",
      "Department": "IT",
      "Semester": "6",
      "Paper": "Flutter",
      "Files": "File 1",
    },
    {
      "No": "2",
      "Department": "CS",
      "Semester": "5",
      "Paper": "React",
      "Files": "File 2",
    },
  ];

  // Function to add a new row
  void _addRow() {
    setState(() {
      tableData.add({
        "No": (tableData.length + 1).toString(),
        "Department": "New Dept",
        "Semester": "New Sem",
        "Paper": "New Paper",
        "Files": "New File",
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ASSIGNMENTS")),
      ),
      body: Column(
        children: [
          // Table header
          Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey),
                children: [
                  tableHeader("No"),
                  tableHeader("Department"),
                  tableHeader("Semester"),
                  tableHeader("Paper"),
                  tableHeader("Files"),
                  tableHeader("Actions"), // Added actions header
                ],
              ),
            ],
          ),
          // Table rows
          Expanded(
            child: SingleChildScrollView(
              child: Table(
                border: TableBorder.all(),
                children: tableData.map((row) {
                  return TableRow(
                    children: [
                      tableCell(row["No"] ?? ""),
                      tableCell(row["Department"] ?? ""),
                      tableCell(row["Semester"] ?? ""),
                      tableCell(row["Paper"] ?? ""),
                      tableCell(row["Files"] ?? ""),
                      actionButtons(row), // Action buttons in the last column
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addRow, // Add a new row when pressed
        child: Icon(Icons.add),
      ),
    );
  }

  // Widget for table header
  Widget tableHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black, // Black text color
          ),
        ),
      ),
    );
  }

  // Widget for table cell
  Widget tableCell(String content) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text(content)),
    );
  }

  // Widget for action buttons (edit, delete)
  Widget actionButtons(Map<String, String> row) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.edit, color: Colors.blue),
              onPressed: () {
                print("Edit clicked for ${row['No']}");
              },
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                setState(() {
                  tableData.remove(row);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
