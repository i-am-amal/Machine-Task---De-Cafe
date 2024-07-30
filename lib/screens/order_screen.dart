import 'package:flutter/material.dart';
import 'package:machine_test_ui_screens/screens/product_detail_screen.dart';
import 'package:machine_test_ui_screens/widgets/item_row.dart';
import 'package:machine_test_ui_screens/widgets/selected_button.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _selectedIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        shadowColor: Colors.black.withOpacity(0.5),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo.png', width: 100, height: 50),
            const Row(
              children: [
                Icon(Icons.g_translate, size: 30),
                SizedBox(width: 10),
                Icon(Icons.account_circle_outlined, size: 30),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Order',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Row(
                children: [
                  SelectableButton(
                    title: 'Menu',
                    index: 0,
                    isSelected: _selectedIndex == 0,
                    onPressed: () => _onButtonPressed(0),
                  ),
                  const Text(
                    '|',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SelectableButton(
                      title: 'Saved',
                      index: 1,
                      isSelected: _selectedIndex == 1,
                      onPressed: () => _onButtonPressed(1)),
                  const Text(
                    '|',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SelectableButton(
                      title: 'Recent',
                      index: 2,
                      isSelected: _selectedIndex == 2,
                      onPressed: () => _onButtonPressed(2)),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Drinks',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductDetailScreen()),
                  );
                },
                child: const ItemRow(
                    imagePath: 'assets/images/mug.png',
                    title: 'Espresso',
                    description: 'Lorem Ipsum is simply dummy text'),
              ),
              const SizedBox(height: 14),
              const ItemRow(
                  imagePath: 'assets/images/mug1.png',
                  title: 'Cappuccino',
                  description: 'Lorem Ipsum is simply dummy text'),
              const SizedBox(height: 10),
              const Divider(height: 32, thickness: 2),
              const Text('Snacks',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              const ItemRow(
                  imagePath: 'assets/images/food1.png',
                  title: 'Snack Title 1',
                  description: 'Lorem Ipsum is simply dummy text'),
              const SizedBox(height: 14),
              const ItemRow(
                  imagePath: 'assets/images/food.png',
                  title: 'Snack Title 2',
                  description: 'Lorem Ipsum is simply dummy text'),
              const SizedBox(height: 14),
              const ItemRow(
                  imagePath: 'assets/images/fd.png',
                  title: 'Snack Title 3',
                  description: 'Lorem Ipsum is simply dummy text'),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
