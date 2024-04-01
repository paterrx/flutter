// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomCard({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(icon, color: Colors.teal),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color.fromARGB(255, 10, 24, 230),
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
