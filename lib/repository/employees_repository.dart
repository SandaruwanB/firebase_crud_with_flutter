import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_test/models/employees_model.dart';

class EmployeesRepository {
  final CollectionReference _employeeCollection =
      FirebaseFirestore.instance.collection("Employees");

  Future<void> createEmployee(EmployeesModel employee) async {
    await _employeeCollection.doc(employee.id).set(employee.toMap());
  }

  Future<void> updateEmployee(EmployeesModel employee) async {
    await _employeeCollection.doc(employee.id).update(employee.toMap());
  }

  Future<void> deleteEmployee(String id) async {
    await _employeeCollection.doc(id).delete();
  }

  Future<EmployeesModel?> getEmployeeById(String id) async {
    DocumentSnapshot doc = await _employeeCollection.doc(id).get();
    if (doc.exists) {
      return EmployeesModel.fromDocumentSnapshot(doc);
    }
    return null;
  }

  Future<List<EmployeesModel>> getAllEmployees() async {
    QuerySnapshot querySnapshot = await _employeeCollection.get();
    return querySnapshot.docs
        .map((doc) => EmployeesModel.fromDocumentSnapshot(doc))
        .toList();
  }
}
