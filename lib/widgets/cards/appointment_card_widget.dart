import 'package:flutter/material.dart';

class AppointmentCardWidget extends StatelessWidget {
  const AppointmentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://i.imgur.com/BoN9kdC.png'),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Dr. Emily Wilson', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text('Vaccination', style: TextStyle(color: Colors.black54)),
              Text('Today, 2:30 PM', style: TextStyle(color: Colors.blue)),
            ],
          )
        ],
      ),
    );
  }
}
