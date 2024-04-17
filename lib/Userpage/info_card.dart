import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onPressed;

  const InfoCard({super.key, required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: const Color(0xFF5FB3F8),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: ListTile(
            leading: Icon(icon, color: Colors.white),
            title: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: "Source Sans Pro"),
            ),
          ),
        ),
      ),
    );
  }
}
