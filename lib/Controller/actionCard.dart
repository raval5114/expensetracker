import 'package:expensetracker/Modal/Provider/expenseTrackerProvider.dart';
import 'package:expensetracker/View/expenses.dart';
import 'package:expensetracker/View/income.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BalanceCard extends ConsumerStatefulWidget {
  const BalanceCard({super.key});

  @override
  ConsumerState<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends ConsumerState<BalanceCard> {
  @override
  Widget build(BuildContext context) {
    final currentBal = ref.watch(expenseTrackerProvider).currentBalc;

    return Card(
      margin: const EdgeInsets.all(18),
      color: Colors.white,
      elevation: 30,
      borderOnForeground: true,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.currency_rupee_sharp),
                  Text(
                    currentBal.toString(),
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "INR",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                width: 120,
                height: 20,
              ),
              Column(
                children: [
                  const Text(
                    "Add a transaction",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.redAccent)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const AddExpensesPage();
                              },
                            ));
                          },
                          child: const Text(
                            "Expense",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const AddIncomePage();
                              },
                            ));
                          },
                          child: const Text(
                            "Income",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
