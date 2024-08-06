import 'package:expensetracker/Controller/incomeForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddIncomePage extends StatefulWidget {
  const AddIncomePage({super.key});

  @override
  State<AddIncomePage> createState() => _AddIncomePageState();
}

class _AddIncomePageState extends State<AddIncomePage> {
  // final _formKey = GlobalKey<FormState>();
  // final TextEditingController _amount = TextEditingController();
  // final TextEditingController _description = TextEditingController();
  // final TextEditingController _title = TextEditingController();
  // String dropDownDefaultItem = 'Allowance';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blueAccent,
        title: const Text(
          "Add Income",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: ListView(
        children: const [
          Padding(padding: EdgeInsets.all(20.0), child: IncomeComponent())
        ],
      ),
    );
  }
}
