import 'package:flutter/material.dart';
import 'applied_projects_data.dart';

class AppliedProjectsScreen extends StatelessWidget {
  const AppliedProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final applied = AppliedProjectsData.appliedProjects;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Applied Projects"),
        backgroundColor: const Color(0xFFF9A825),
      ),
      body: applied.isEmpty
          ? const Center(
              child: Text("No Applied Projects Yet"),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: applied.length,
              itemBuilder: (context, index) {
                final project = applied[index];

                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project["title"] ?? "",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text("Budget: ${project["budget"]}"),
                      const SizedBox(height: 6),
                      Text("Status: ${project["status"]}"),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
