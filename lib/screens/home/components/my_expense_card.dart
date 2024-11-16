import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyExpense extends StatelessWidget {
  const MyExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              offset: const Offset(2, 4),
              color: Theme.of(context).colorScheme.secondary,
              blurRadius: 2,
            ),
          ]),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.secondary,
                ]),
                boxShadow: const [BoxShadow(blurRadius: 2)]),
            height: 50,
            width: 50,
            child: const Icon(
              CupertinoIcons.paperplane,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("data"),
              Text("data"),
            ],
          )
        ],
      ),
    );
  }
}
