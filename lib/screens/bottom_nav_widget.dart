import 'package:flutter/material.dart';
import 'package:machine_test_ui_screens/screens/call_waiter_screen.dart';
import 'package:machine_test_ui_screens/screens/home_screen.dart';
import 'package:machine_test_ui_screens/screens/offer_screen.dart';
import 'package:machine_test_ui_screens/screens/order_screen.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  static List options = [
    const HomeScreen(),
    const OrderScreen(),
    const OfferScreen(),
    const CallWaiterScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Navigator(
              key: GlobalKey<NavigatorState>(),
              onGenerateRoute: (RouteSettings settings) {
                return MaterialPageRoute(
                  builder: (_) => options[_selectedIndex],
                );
              },
            ),
          ),
          if (_selectedIndex == 1)
            Positioned(
              bottom: kBottomNavigationBarHeight - 50,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.brown,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 6),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Find store',
                            suffixIcon: const Icon(Icons.qr_code),
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.shopping_bag_outlined,
                        color: Colors.white),
                  ],
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: 'Call waiter',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }
}
