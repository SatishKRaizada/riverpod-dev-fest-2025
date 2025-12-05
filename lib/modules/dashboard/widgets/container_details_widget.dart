import 'package:flutter/material.dart';

class ContainerDetailsWidget extends StatelessWidget {
  final String name;
  final String size;
  final String age;

  const ContainerDetailsWidget({super.key, required this.name, required this.size, required this.age});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: height * 0.01),
        Text('Size: $size', style: const TextStyle(fontSize: 16)),
        SizedBox(height: height * 0.01),
        Text('Age: $age', style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
