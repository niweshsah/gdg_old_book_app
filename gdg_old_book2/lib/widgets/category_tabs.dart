// lib/widgets/category_tabs.dart

import 'package:flutter/material.dart';
import '../data/books_data.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: BooksData.categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Chip(
              label: Text(BooksData.categories[index]),
              backgroundColor: Colors.blue.withOpacity(0.1),
            ),
          );
        },
      ),
    );
  }
}