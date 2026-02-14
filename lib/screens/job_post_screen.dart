import 'package:flutter/material.dart';
import 'ai_skill_matcher.dart';

class JobPostScreen extends StatefulWidget {
  const JobPostScreen({super.key});

  @override
  State<JobPostScreen> createState() => _JobPostScreenState();
}

class _JobPostScreenState extends State<JobPostScreen> {

  final TextEditingController _descController = TextEditingController();

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

                // ✅ UPDATED DESCRIPTION FIELD
                TextField(
                  controller: _descController,
                  maxLines: 4,
                  decoration: const InputDecoration(
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

                // ✅ UPDATED POST BUTTON WITH AI
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final suggestion =
                          AISkillMatcher.suggestSkill(
                              _descController.text);

                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("AI Skill Suggestion"),
                          content: Text(
                              "Suggested Freelancer Type:\n\n$suggestion"),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(context),
                              child: const Text("OK"),
                            )
                          ],
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
