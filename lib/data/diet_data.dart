import 'package:flutter/material.dart';
import '../models/diet_type.dart';

final List<DietType> dietTypes = [
  DietType(name: 'Regular', subscribers: 420, icon: Icons.restaurant),
  DietType(name: 'Diabetic', subscribers: 35, icon: Icons.bloodtype),
  DietType(name: 'Vegetarian', subscribers: 22, icon: Icons.eco),
  DietType(name: 'Peanut Free', subscribers: 12, icon: Icons.warning),
];
