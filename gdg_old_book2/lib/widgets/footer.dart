import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../screens/home_screen.dart';
import '../screens/cart_screen.dart';
import '../screens/you_screen.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(
          horizontal: 0.1, vertical: 5), // Adjust width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 2.0,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 5), // Adjust inner spacing
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Home Button
              Expanded(
                child: IconButton(
                  icon: const Icon(Iconsax.home),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                ),
              ),
              // User Button
              Expanded(
                child: IconButton(
                  icon: const Icon(Iconsax.user),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const YouPage()),
                    );
                  },
                ),
              ),
              // Cart Button
              Expanded(
                child: IconButton(
                  icon: const Icon(Iconsax.shopping_cart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CartScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}