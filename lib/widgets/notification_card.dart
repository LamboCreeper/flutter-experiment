import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final IconData icon;
  final String message;

  NotificationCard(this.icon, this.message);

  Widget build(BuildContext context) => (
      Card(
          child: ListTile(
              leading: Icon(this.icon),
              title: Text(this.message),
              trailing: Icon(Icons.more_vert)
          )
      )
  );
}