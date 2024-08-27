import 'package:flutter/material.dart';

class Employees extends StatefulWidget {
  const Employees({super.key});

  @override
  State<Employees> createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.amber),
      debugShowCheckedModeBanner: false,
      title: "Employees",
      home: const Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: Text("Hello app is working"),
            )
          ],
        )),
      ),
    );
  }
}
