import 'package:flutter/material.dart';
import 'package:pet_care/widgets/cards/appointment_card_widget.dart';
import 'package:pet_care/widgets/cards/service_card_widget.dart';

class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FBFC),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const Text(
              'Hello, Sarah!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'What service do you need today?',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                ServiceCardWidget(
                  title: 'Healthcare',
                  subtitle: 'Book vet appointments',
                  icon: Icons.medical_services,
                  bgColor: Colors.green[100],
                  onTap: () {},
                ),
                ServiceCardWidget(
                  title: 'Video Consult',
                  subtitle: 'Talk to a vet now',
                  icon: Icons.videocam,
                  bgColor: Colors.blue[100],
                  onTap: () {},
                ),
                ServiceCardWidget(
                  title: 'Grooming',
                  subtitle: 'Professional care',
                  icon: Icons.cut,
                  bgColor: Colors.orange[100],
                  onTap: () {},
                ),
                ServiceCardWidget(
                  title: 'Pet Store',
                  subtitle: 'Shop & Adopt',
                  icon: Icons.shopping_bag,
                  bgColor: Colors.purple[100],
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: const [
                  Icon(Icons.warning, color: Colors.white),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Emergency Care\nGet immediate help for your pet',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Upcoming Appointments',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            const AppointmentCardWidget(),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'My Pets'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
