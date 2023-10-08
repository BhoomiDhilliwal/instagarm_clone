import 'package:flutter/material.dart';


class MessageBox extends StatelessWidget {
  const MessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Chat Box"),),

      ),


    );
  }
}