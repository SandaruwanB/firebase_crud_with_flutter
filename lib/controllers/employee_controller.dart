import 'package:firebase_test/models/employees_model.dart';
import 'package:firebase_test/repository/employees_repository.dart';
import 'package:flutter/material.dart';

class EmployeeController with ChangeNotifier {
  final EmployeesRepository _employeesRepository = EmployeesRepository();
  List<EmployeesModel> _employees = [];

  List<EmployeesModel> get employees => _employees;

  Future<void> createEmployee(EmployeesModel employee) async {
    await _employeesRepository.createEmployee(employee);
    _employees.add(employee);
    notifyListeners();
  }

  Future<void> updateEmployee(EmployeesModel employee) async {
    await _employeesRepository.updateEmployee(employee);
    int index = _employees.indexWhere((u) => u.id == employee.id);
    if (index != -1) {
      _employees[index] = employee;
      notifyListeners();
    }
  }

  Future<void> deleteEmployee(String id) async {
    await _employeesRepository.deleteEmployee(id);
    _employees.removeWhere((user) => user.id == id);
    notifyListeners();
  }

  Future<void> fetchAllEmployees() async {
    _employees = await _employeesRepository.getAllEmployees();
    notifyListeners();
  }
}
