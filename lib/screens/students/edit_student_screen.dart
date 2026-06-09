import 'package:flutter/material.dart';
import '../../firebase/firebase_service.dart';

class EditStudentScreen extends StatefulWidget {
  final String id;
  final String name;
  final String dietType;

  const EditStudentScreen({
    super.key,
    required this.id,
    required this.name,
    required this.dietType,
  });

  @override
  State<EditStudentScreen> createState() => _EditStudentScreenState();
}

class _EditStudentScreenState extends State<EditStudentScreen> {
  final FirebaseService service = FirebaseService();

  late TextEditingController nameController;
  late String selectedDiet;

  final diets = [
    'Regular',
    'Diabetic',
    'Vegetarian',
    'Peanut Free',
  ];

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.name);
    selectedDiet = widget.dietType;
  }

  Future<void> save() async {
    await service.updateStudent(
      id: widget.id,
      name: nameController.text,
      dietType: selectedDiet,
    );

    if (mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Student'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Student Name',
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: save,
              child: const Text('Update Student'),
            ),
          ],
        ),
      ),
    );
  }
}
