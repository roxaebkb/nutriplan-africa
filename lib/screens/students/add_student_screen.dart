import 'package:flutter/material.dart';
import '../../firebase/firebase_service.dart';
import '../../theme/app_colors.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final _nameController = TextEditingController();
  final FirebaseService _firebaseService = FirebaseService();

  String selectedDiet = 'Regular';
  bool isLoading = false;

  final diets = [
    'Regular',
    'Diabetic',
    'Vegetarian',
    'Peanut Free',
  ];

  Future<void> saveStudent() async {
    if (_nameController.text.trim().isEmpty) return;

    setState(() {
      isLoading = true;
    });

    await _firebaseService.addStudent(
      name: _nameController.text.trim(),
      dietType: selectedDiet,
    );

    if (mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('Add Student'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Student Name',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: selectedDiet,
              items: diets.map((diet) {
                return DropdownMenuItem(
                  value: diet,
                  child: Text(diet),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDiet = value!;
                });
              },
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: isLoading ? null : saveStudent,
                child: isLoading
                    ? const CircularProgressIndicator()
                    : const Text('Save Student'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
