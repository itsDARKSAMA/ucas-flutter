/*
Created by : Abdelrahman Almajayda <3
UCAS ID : 120190071
Github : Github.com/itsDaRKSAMA
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DaRK-SAMA',
      home: CardsScreen(),
    );
  }
}

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  for (int i = 1; i <= 3; i++)
                    const Card(
                      isLeftCard: true,
                    ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  for (int i = 1; i <= 6; i++)
                    const Card(
                      isLeftCard: false,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final bool isLeftCard;
  final Color cardColor = const Color(0xFFF2837B);
  const Card({super.key, this.isLeftCard = true});

  @override
  Widget build(BuildContext context) {
    return isLeftCard
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.5),
              child: Container(
                width: double.infinity,
                color: cardColor,
              ),
            ),
          )
        : Expanded(
            child: Row(
              children: [
                for (int i = 1; i <= 2; i++)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Container(
                        width: double.infinity,
                        color: cardColor,
                      ),
                    ),
                  ),
              ],
            ),
          );
  }
}
