import 'package:flutter/material.dart';

class NotificationBox extends StatelessWidget {
  const NotificationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Notification Bar")),
      ),
    );
  }
}