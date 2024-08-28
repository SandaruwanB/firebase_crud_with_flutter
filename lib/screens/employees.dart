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

  void navigateToForm() {
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
        body: GridView.builder(
          itemCount: 1000,
          padding: const EdgeInsets.all(4.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.0,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: Text("Item $index"),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: navigateToForm,
          backgroundColor: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const Icon(Icons.add, color: Colors.white, size: 30),
        ),
      ),
    );
  }
}
