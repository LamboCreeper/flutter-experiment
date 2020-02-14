import 'package:flutter/material.dart';

import '../notification_card.dart';

class NotificationsPage extends StatelessWidget {
  Widget build(BuildContext context) => (
      ListView(
          children: <Widget>[
            NotificationCard(Icons.person_add, "Lambo followed you"),
            NotificationCard(Icons.favorite, "Jacob liked your post")
          ]
      )
  );
}