//import 'package:google_fonts/google_fonts.dart';
import 'package:expensetracker/Controller/actionCard.dart';
import 'package:expensetracker/Controller/appBar.dart';
import 'package:expensetracker/Controller/transactionHistory.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      drawer: const Drawer(
        semanticLabel: "Expense Tracker",
        //  shape: Border(),
        child: Column(
          children: [],
        ),
      ),
      backgroundColor: Colors.blueAccent,
      body: const CustomScrollView(
        slivers: [
          NewAppBar(),
          SliverToBoxAdapter(
            child: BalanceCard(),
          ),
          TransactionHistory()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Reports")
        ],
      ),
    );
  }
}
