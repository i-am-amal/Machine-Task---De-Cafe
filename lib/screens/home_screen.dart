import 'package:flutter/material.dart';
import 'package:machine_test_ui_screens/widgets/item_tile.dart';
import 'package:machine_test_ui_screens/widgets/offers_and_rewards.dart';
import 'package:machine_test_ui_screens/widgets/start_order.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                elevation: 10,
                shadowColor: Colors.black.withOpacity(0.5),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Hello, Amin',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage('assets/images/logo.png'),
                              width: 100,
                              height: 50,
                            ),
                            Row(
                              children: [
                                Icon(Icons.g_translate, size: 30),
                                SizedBox(width: 10),
                                Icon(Icons.account_circle_outlined, size: 30),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const OfferAndRewards(),
              const StartOrder(),
              const SizedBox(height: 10),
              const Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Recent Order',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 18),
                  ),
                ],
              ),
              const ItemTile(
                itemName: 'Croissant',
                price: 5,
                imagePath: 'assets/images/food.png',
              ),
              const ItemTile(
                itemName: 'Cinnamon bun',
                price: 6,
                imagePath: 'assets/images/food1.png',
              ),
              const ItemTile(
                itemName: 'Croissant',
                price: 5,
                imagePath: 'assets/images/food.png',
              ),
              const ItemTile(
                itemName: 'Croissant',
                price: 5,
                imagePath: 'assets/images/food.png',
              ),
              const ItemTile(
                itemName: 'Cinnamon bun',
                price: 6,
                imagePath: 'assets/images/food1.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
