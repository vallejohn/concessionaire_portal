import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptyAccountWidget extends StatefulWidget {
  const EmptyAccountWidget({super.key});

  @override
  State<EmptyAccountWidget> createState() => _EmptyAccountWidgetState();
}

class _EmptyAccountWidgetState extends State<EmptyAccountWidget> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Center(
      child: Column(
        children: [
          Center(
              child: Text(
            "No accounts found.\nStart by adding a new account!",
            textAlign: TextAlign.center,
            style: textStyle.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          )),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: () {
              context.go('/home/linkAccount');
            },
            label: const Text('Link account'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
