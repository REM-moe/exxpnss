import 'dart:math';

import 'package:exxpnss/screens/home/components/my_expense_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow[600],
                          ),
                        ),
                        Icon(
                          CupertinoIcons.person_fill,
                          color: Theme.of(context).colorScheme.outline,
                          size: 25,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                        Text(
                          "Johny",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.settings),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 2,
                      offset: Offset(5, 5),
                      spreadRadius: 0,
                      color: Colors.greenAccent),
                ],
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  transform: const GradientRotation(pi / 4),
                  colors: [
                    Theme.of(context).colorScheme.tertiary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Total Balance",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "₹ 5000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 40,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.green[400],
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              CupertinoIcons.up_arrow,
                              size: 12,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Column(
                            children: [
                              Text(
                                "income",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                " ₹ 1000",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.red[400],
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              CupertinoIcons.arrow_down,
                              size: 12,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Column(
                            children: [
                              Text(
                                "expense",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                " ₹ 1000",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            // view all section
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Transaction history",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "view all",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, int i) {
                  return const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                    child: MyExpense(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
