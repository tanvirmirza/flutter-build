import 'package:flutter/material.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Employee'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 20),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Name'),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _ageController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Age',
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _salaryController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Salary',
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _nameController.clear();
                  _ageController.clear();
                  _salaryController.clear();
                },
                child: const Text('Add Employee'),
              ),
            ],
          ),
        ));
  }
}
