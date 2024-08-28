import 'package:cloud_firestore/cloud_firestore.dart';

class EmployeesModel {
  String id;
  String name;
  String address;
  int age;

  EmployeesModel(
      {required this.id,
      required this.name,
      required this.address,
      required this.age});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'address': address, 'age': age};
  }

  factory EmployeesModel.fromMap(Map<String, dynamic> map) {
    return EmployeesModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      address: map['address'] ?? '',
      age: map['age'] ?? 0,
    );
  }

  factory EmployeesModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    return EmployeesModel.fromMap(doc.data() as Map<String, dynamic>);
  }
}
