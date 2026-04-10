import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String userName;
  const ProfileCard({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[900],
              child: Text(
              userName.trim().isNotEmpty
                  ? userName
                  .trim()
                  .split(' ')
                  .where((word) => word.isNotEmpty)
                  .map((word) => word[0])
                  .take(2)
                  .join()
                  .toUpperCase()
                  : 'U',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(),
              ),
            ),
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Icon(Icons.camera_alt, size: 18, color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          userName,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(),
        ),
      ],
    );
  }
}
