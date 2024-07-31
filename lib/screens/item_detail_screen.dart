import 'package:flutter/material.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({super.key});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  String selectedSize = 'Medium';

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
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/mug.png'),
                    radius: 70,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Espresso',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    'Size',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const Divider(thickness: 2),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSizeButton('Small', Icons.local_drink, 20.0),
                  _buildSizeButton('Medium', Icons.local_drink, 30.0),
                  _buildSizeButton('Big', Icons.local_drink, 40.0),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What\'s Included',
                    style: TextStyle(fontSize: 16),
                  ),
                  Divider(thickness: 2),
                ],
              ),
              const SizedBox(height: 10),
              _buildTextField('Milk', Icons.arrow_drop_down),
              const SizedBox(height: 10),
              _buildTextFieldWithCounter('Espresso Shots'),
              const SizedBox(height: 10),
              _buildTextField('Toppings', Icons.arrow_drop_down),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                label: const Text('Customize'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  child: const Text('Add to Order    45'),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSizeButton(String size, IconData icon, double iconSize) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, size: iconSize),
          onPressed: () {
            setState(() {
              selectedSize = size;
            });
          },
          color: selectedSize == size ? Colors.orange : Colors.grey,
        ),
        const SizedBox(height: 5),
        Text(
          size,
          style: TextStyle(
            color: selectedSize == size ? Colors.orange : Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String label, IconData trailingIcon) {
    return SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          suffixIcon: Icon(trailingIcon),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
          isDense: true,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithCounter(String label) {
    return SizedBox(
      width: 350,
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: label,
              border: const OutlineInputBorder(),
              contentPadding: const EdgeInsets.only(left: 10.0, right: 50.0),
            ),
          ),
          Positioned(
            right: 10,
            top: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {},
                ),
                const Text('1'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
