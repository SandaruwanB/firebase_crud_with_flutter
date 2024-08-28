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

  onClickGridItem(int id) {
    return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 200,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Delete $id"),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"),
                ),
              ],
            )),
          );
        });
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      title: "Employees",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          scrolledUnderElevation: 6.0,
          title: const Text("Employees"),
          backgroundColor: Colors.white,
        ),
        body: GridView.builder(
          itemCount: 100,
          padding: const EdgeInsets.all(4.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.0,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () => onClickGridItem(index),
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 240, 237, 237),
                  ),
                  child: Text("Item $index"),
                ));
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
