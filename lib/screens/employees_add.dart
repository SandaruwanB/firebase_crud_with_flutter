import 'package:flutter/material.dart';

class EmployeesAdd extends StatefulWidget {
  const EmployeesAdd({super.key});

  @override
  State<EmployeesAdd> createState() => _EmployeeAddState();
}

class _EmployeeAddState extends State<EmployeesAdd> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void goBack() {
    Navigator.pop(context);
  }

  void saveEmployee() {}

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
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                width: double.infinity,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 35),
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field is required";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 35),
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field is required";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          saveEmployee();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(horizontal: 100.0),
                        ),
                        child: const Text("save", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        )),
      ),
    );
  }
}
