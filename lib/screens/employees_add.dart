import 'package:flutter/material.dart';

class EmployeesAdd extends StatefulWidget {
  const EmployeesAdd({super.key});

  @override
  State<EmployeesAdd> createState() => _EmployeeAddState();
}

class _EmployeeAddState extends State<EmployeesAdd> {
  @override
  void initState() {
    super.initState();
  }

  void goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      title: "Add Employees",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Add Employee"),
          leading: IconButton(
              onPressed: () {
                goBack();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: const Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
