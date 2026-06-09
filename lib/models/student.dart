class Student {
  final int id;
  final String name;
  final String dietType;

  const Student({
    required this.id,
    required this.name,
    required this.dietType,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      dietType: json['diet_type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'diet_type': dietType,
    };
  }
}
