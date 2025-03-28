import 'package:flutter/material.dart';

class BillingStatementPage extends StatefulWidget {
  const BillingStatementPage({super.key});

  @override
  State<BillingStatementPage> createState() => _BillingStatementPageState();
}

class _BillingStatementPageState extends State<BillingStatementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [

        ],
      ),
    );
  }
}
