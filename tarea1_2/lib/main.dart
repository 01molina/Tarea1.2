import 'package:flutter/material.dart';

void main() {
  runApp(RemindersApp());
}

class RemindersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reminders App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Reminders'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeatureTile(
              icon: Icons.check_circle,
              color: Colors.green,
              title: 'Quick Creation',
              description:
                  'Simply type in your list, ask Siri, or add a reminder from your Calendar app.',
            ),
            FeatureTile(
              icon: Icons.shopping_cart,
              color: Colors.orange,
              title: 'Grocery Shopping',
              description:
                  'Create a Grocery List that automatically sorts items you add by category.',
            ),
            FeatureTile(
              icon: Icons.person,
              color: Colors.blue,
              title: 'Easy Sharing',
              description:
                  'Collaborate on a list, and even assign individual tasks.',
            ),
            FeatureTile(
              icon: Icons.folder,
              color: Colors.yellow,
              title: 'Powerful Organization',
              description:
                  'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists.',
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String description;

  FeatureTile({
    required this.icon,
    required this.color,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: color, size: 40),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
