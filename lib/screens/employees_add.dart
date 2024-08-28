import 'package:firebase_test/controllers/employee_controller.dart';
import 'package:firebase_test/models/employees_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmployeesAdd extends StatefulWidget {
  const EmployeesAdd({super.key});

  @override
  State<EmployeesAdd> createState() => _EmployeeAddState();
}

class _EmployeeAddState extends State<EmployeesAdd> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _ageController = TextEditingController();
  final _nicController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void goBack() {
    Navigator.pop(context);
  }

  Future<void> saveEmployee() async {
    if (_formKey.currentState!.validate()) {
      EmployeesModel employee = EmployeesModel(
        id: _nicController.text,
        name: _nameController.text,
        address: _addressController.text,
        age: int.parse(_ageController.text),
      );

      await context.read<EmployeeController>().createEmployee(employee);
      print("added");
    }
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
                      const SizedBox(height: 60),
                      TextFormField(
                        controller: _nameController,
                        keyboardType: TextInputType.text,
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
                        controller: _nicController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "NIC",
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
                        controller: _addressController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Address",
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
                        controller: _ageController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Age",
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
                          padding:
                              const EdgeInsets.symmetric(horizontal: 100.0),
                        ),
                        child: const Text(
                          "save",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
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
