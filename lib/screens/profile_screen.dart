import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: const Color(0xFFF9A825),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFF8ED),
              Color(0xFFFFE0B2),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Profile Avatar
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xFFF9A825),
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "User Name",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  "user@email.com",
                  style: TextStyle(color: Colors.black54),
                ),

                const SizedBox(height: 30),

                _profileTile(Icons.work, "My Skills"),
                const SizedBox(height: 12),
                _profileTile(Icons.settings, "Settings"),
                const SizedBox(height: 12),
                _profileTile(Icons.logout, "Logout"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileTile(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFFF9A825)),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
