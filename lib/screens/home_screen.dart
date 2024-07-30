import 'package:flutter/material.dart';

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
                              Icon(Icons.language, size: 30),
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green,
                height: 170,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: 170,
                        child: const Center(
                          child: Text(
                            'Text Here',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 170,
                        color: Colors.blueGrey,
                        child: const Image(
                          image: AssetImage('assets/images/coffee.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 170,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        color: Colors.blueGrey,
                        child: const Image(
                          image:
                              AssetImage('assets/images/lady_with_coffee.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: 150,
                        child: const Center(
                          child: Text(
                            'Text Here',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text('Recent Orders'),
              ],
            )
          ],
        ),
      ),

      // ---------------------- bottom nav bar
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_bag_outlined),
      //       label: 'Order',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.local_offer_outlined),
      //       label: 'Offers',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.call_outlined),
      //       label: 'Call waiter',
      //     ),
      //   ],
      // ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: Icon(Icons.menu, color: Colors.black),
//         actions: [
//           Icon(Icons.notifications, color: Colors.black),
//           SizedBox(width: 10),
//           Icon(Icons.account_circle, color: Colors.black),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Hello, Amin',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20),
//               _buildOffersAndRewards(),
//               SizedBox(height: 20),
//               _buildStartOrder(),
//               SizedBox(height: 20),
//               Text(
//                 'Recent Order',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 10),
//               _buildRecentOrder('Croissant', 5),
//               _buildRecentOrder('Cinnamon bun', 6),
//               _buildRecentOrder('Croissant', 5),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_bag),
//             label: 'Order',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.local_offer),
//             label: 'Offers',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.call),
//             label: 'Call waiter',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildOffersAndRewards() {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.grey[200],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Offers and Rewards',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor',
//             style: TextStyle(fontSize: 14),
//           ),
//           SizedBox(height: 8),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text('View offers'),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.orange,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStartOrder() {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.grey[200],
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Start your order and enjoy your day',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor',
//                   style: TextStyle(fontSize: 14),
//                 ),
//                 SizedBox(height: 8),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text('Start order'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Image.asset(
//             'assets/images/coffee.jpeg',
//             width: 80,
//             height: 80,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildRecentOrder(String itemName, int price) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       margin: EdgeInsets.symmetric(vertical: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.grey[200],
//       ),
//       child: Row(
//         children: [
//           Image.asset(
//             'assets/images/mug.png',
//             width: 40,
//             height: 40,
//           ),
//           SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   itemName,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Lorem Ipsum is simply dummy text',
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ],
//             ),
//           ),
//           Text(
//             '\$$price',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(width: 16),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text('Order Again'),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.orange,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
