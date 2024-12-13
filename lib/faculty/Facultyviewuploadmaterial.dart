import 'package:flutter/material.dart';


class TableView extends StatefulWidget {
  @override
  _TableViewState createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  // Sample data
  List<Map<String, String>> tableData = [
    {
      "No": "1",
      "Department": "IT",
      "Semester": "6",
      "Paper": "Flutter",
      "Videos": "Video 1",
      "Files": "File 1",
    },
    {
      "No": "2",
      "Department": "CS",
      "Semester": "5",
      "Paper": "React",
      "Videos": "Video 2",
      "Files": "File 2",
    },
  ];

  // Function to add a new row
  // void _addRow() {
  //   setState(() {
  //     tableData.add({
  //       "No": (tableData.length + 1).toString(),
  //       "Department": "New Dept",
  //       "Semester": "New Sem",
  //       "Paper": "New Paper",
  //       "Videos": "New Video",
  //       "Files": "New File",
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("STUDY MATERIALS")),
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
                  tableHeader("Videos"),
                  tableHeader("Files"),
                  tableHeader("Actions"),
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
                      tableCellButton("View", () {
                        print("View video clicked for ${row['No']}");
                      }),
                      tableCellButton("View", () {
                        print("View file clicked for ${row['No']}");
                      }),
                      actionButtons(row),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
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

  // Widget for table cell with button
  Widget tableCellButton(String label, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(label),
        ),
      ),
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
