import 'package:flutter/material.dart';

class NewAppBar extends StatefulWidget {
  const NewAppBar({super.key});

  @override
  State<NewAppBar> createState() => _NewAppBarState();
}

class _NewAppBarState extends State<NewAppBar> {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      leading: InkWell(
        child: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Expense Tracker",
        style: TextStyle(
            fontSize: 32, color: Colors.white, fontWeight: FontWeight.w600),
      ),
      backgroundColor: Colors.blueAccent,
      expandedHeight: 45,
    );
  }
}
