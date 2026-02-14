import 'package:flutter/material.dart';

class JobPostScreen extends StatelessWidget {
  const JobPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post a Job"),
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create New Project",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                // Job Title
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Project Title",
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 16),

                // Description
                const TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: "Project Description",
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 16),

                // Budget
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Budget (PKR)",
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 16),

                // Deadline
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Deadline",
                    hintText: "e.g. 15 March 2026",
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 30),

                // Post Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Job Posted Successfully!"),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        "Post Job",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
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
