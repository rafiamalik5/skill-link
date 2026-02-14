import 'package:flutter/material.dart';
import 'project_detail_screen.dart';

class MyProjectsScreen extends StatelessWidget {
  const MyProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Projects"),
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
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: const [
                ProjectCard(
                  title: "Flutter App Development",
                  budget: "PKR 50,000",
                  status: "Open",
                ),
                SizedBox(height: 16),
                ProjectCard(
                  title: "Website Redesign",
                  budget: "PKR 30,000",
                  status: "In Progress",
                ),
                SizedBox(height: 16),
                ProjectCard(
                  title: "Logo Design",
                  budget: "PKR 10,000",
                  status: "Completed",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String budget;
  final String status;

  const ProjectCard({
    super.key,
    required this.title,
    required this.budget,
    required this.status,
  });

  Color _statusColor() {
    switch (status) {
      case "Open":
        return Colors.green;
      case "In Progress":
        return Colors.orange;
      case "Completed":
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProjectDetailScreen(
              title: title,
              budget: budget,
              status: status,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Budget: $budget",
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color: _statusColor().withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      color: _statusColor(),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, size: 16),
              ],
            )
          ],
        ),
      ),
    );
  }
}
