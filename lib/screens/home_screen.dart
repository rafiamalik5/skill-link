import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'job_post_screen.dart';
import 'my_projects_screen.dart';
import 'applied_projects_screen.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hi, User 👋',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      ),
    );
  },
  child: const CircleAvatar(
    backgroundColor: Color(0xFFF9A825),
    child: Icon(Icons.person, color: Colors.white),
  ),
),

                  ],
                ),

                const SizedBox(height: 20),

                // Search Bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search skills or people',
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

// 🔹 Post Job Button
SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const JobPostScreen(),
        ),
      );
    },
    child: const Text("Post a Job"),
  ),
),

const SizedBox(height: 15),

// 🔹 My Projects Button
SizedBox(
  width: double.infinity,
  child: OutlinedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MyProjectsScreen(),
        ),
      );
    },
    child: const Text("My Projects"),
  ),
),
const SizedBox(height: 15),

SizedBox(
  width: double.infinity,
  child: OutlinedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AppliedProjectsScreen(),
        ),
      );
    },
    child: const Text("Applied Projects"),
  ),
),

const SizedBox(height: 30),

const Text(
  'Popular Skills',

                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                // Skill Cards
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: const [
                      _HomeCard(title: 'Flutter'),
                      _HomeCard(title: 'Web Dev'),
                      _HomeCard(title: 'UI / UX'),
                      _HomeCard(title: 'Marketing'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 🔁 Home Skill Card
class _HomeCard extends StatelessWidget {
  final String title;

  const _HomeCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
