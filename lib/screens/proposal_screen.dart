import 'package:flutter/material.dart';

class ProposalScreen extends StatefulWidget {
  const ProposalScreen({super.key});

  @override
  State<ProposalScreen> createState() => _ProposalScreenState();
}

class _ProposalScreenState extends State<ProposalScreen> {

  final TextEditingController _proposalController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Submit Proposal"),
        backgroundColor: const Color(0xFFF9A825),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _proposalController,
              maxLines: 6,
              decoration: const InputDecoration(
                labelText: "Write your proposal",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Proposal Submitted!"),
                  ),
                );
              },
              child: const Text("Submit Proposal"),
            )
          ],
        ),
      ),
    );
  }
}
