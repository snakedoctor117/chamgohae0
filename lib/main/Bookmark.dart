import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  bool isButtonAbove = false;

  void toggleButtonPosition() {
    setState(() {
      isButtonAbove = !isButtonAbove;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Move Button Example'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: isButtonAbove ? 100 : 200,
            left: 50,
            child: ElevatedButton(
              onPressed: toggleButtonPosition,
              child: const Text('Move Button'),
            ),
          ),
          Positioned(
            top: isButtonAbove ? 200 : 100,
            left: 50,
            child: ElevatedButton(
              onPressed: toggleButtonPosition,
              child: const Text('Other Button'),
            ),
          ),
        ],
      ),
    );
  }
}
