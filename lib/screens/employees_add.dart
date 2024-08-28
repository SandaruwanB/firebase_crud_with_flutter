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

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      title: "Add Employees",
      home: const Scaffold(),
    );
  }
}
