import 'package:flutter/material.dart';

class ServiceCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color? bgColor;
  final VoidCallback onTap;

  const ServiceCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.bgColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 32, color: Colors.black),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(subtitle, style: const TextStyle(color: Colors.black54, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}