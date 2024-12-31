import 'package:flutter/material.dart';


class NewsWidgets extends StatelessWidget {
  const NewsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("News", style: TextStyle(
          fontSize: 16,
        ),),
      ),
    );
  }
}