import 'package:flutter/material.dart';
import 'applied_projects_data.dart';
import 'applied_candidates_screen.dart';

class ProjectDetailScreen extends StatelessWidget {
  final String title;
  final String budget;
  final String status;

  const ProjectDetailScreen({
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
    return Scaffold(
      appBar: AppBar(
  title: const Text("Project Details"),
  backgroundColor: const Color(0xFFF9A825),
  actions: [
    IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Edit Feature Coming Soon"),
          ),
        );
      },
    )
  ],
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔹 Title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                // 🔹 Budget
                Text(
                  "Budget: $budget",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 10),

                // 🔹 Status
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
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

                const SizedBox(height: 30),

                // 🔹 Description Title
                const Text(
                  "Project Description",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                // 🔹 Description Text
                const Text(
                  "This project requires a skilled developer to complete the assigned task professionally and within the deadline.",
                  style: TextStyle(color: Colors.black87),
                ),

                // ✅ THIS IS WHERE BUTTON CODE IS ADDED
                const Spacer(),

SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: () {
      AppliedProjectsData.appliedProjects.add({
        "title": title,
        "budget": budget,
        "status": status,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Applied Successfully!"),
        ),
      );
    },
    child: const Padding(
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Text(
        "Apply Now",
        style: TextStyle(fontSize: 16),
      ),
    ),
  ),
),

const SizedBox(height: 20),

SizedBox(
  width: double.infinity,
  child: OutlinedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AppliedCandidatesScreen(),
        ),
      );
    },
    child: const Text("View Applied Candidates"),
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
