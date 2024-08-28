import 'package:firebase_test/screens/employees_add.dart';
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

  void navigateToForm(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (contex) => const EmployeesAdd()));
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.amber),
      debugShowCheckedModeBanner: false,
      title: "Employees",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text("Employees"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Center(
              child: Text("Item $index"),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigateToForm(contex);
          },
          backgroundColor: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const Icon(Icons.add, color: Colors.white, size: 30),
        ),
      ),
    );
  }
}
