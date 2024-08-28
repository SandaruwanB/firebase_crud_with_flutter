import 'package:firebase_test/controllers/employee_controller.dart';
import 'package:firebase_test/screens/employees.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const App());
}


class App extends StatelessWidget{
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>EmployeeController()),
      ],
      child : const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Employees(),
      )
    );
  }
}

