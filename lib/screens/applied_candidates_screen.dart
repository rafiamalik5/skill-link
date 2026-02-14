import 'package:flutter/material.dart';

class AppliedCandidatesScreen extends StatelessWidget {
  const AppliedCandidatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final candidates = [
      {"name": "Ali Khan", "skill": "Flutter Developer"},
      {"name": "Sara Ahmed", "skill": "UI/UX Designer"},
      {"name": "Usman Tariq", "skill": "Web Developer"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Applied Candidates"),
        backgroundColor: const Color(0xFFF9A825),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: candidates.length,
        itemBuilder: (context, index) {
          final candidate = candidates[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 6),
              ],
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xFFF9A825),
                  child: Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      candidate["name"]!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(candidate["skill"]!),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
