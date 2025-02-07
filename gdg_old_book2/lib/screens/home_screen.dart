import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../widgets/category_tabs.dart';
import '../widgets/featured_book.dart';
import '../widgets/book_grid.dart';
import '../widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''), // Empty title
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20), // Height of the search bar
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for books...',
                prefixIcon: const Icon(Iconsax.search_normal),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const FeaturedBook(),
          const CategoryTabs(),
          const Expanded(
            child: BookGrid(),
          ),
        ],
      ),
      bottomNavigationBar: const Footer(), // Use the footer widget here
    );
  }
}
