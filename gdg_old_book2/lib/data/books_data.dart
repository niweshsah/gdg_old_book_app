import '../models/book.dart';

class BooksData {
  static final List<Book> books = [
    Book(
      id: '1',
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      price: 9.99,
      imageUrl: 'assets/images/book1.jpg',
      description: 'A story of decadence and excess...',
      category: 'Fiction',
      rating: 4.5,
    ),
    // Add more books in different categories
    Book(
      id: '2',
      title: 'A Brief History of Time',
      author: 'Stephen Hawking',
      price: 14.99,
      imageUrl: 'assets/images/book2.jpg',
      description: 'An exploration of cosmology...',
      category: 'Science',
      rating: 4.8,
    ),
    Book(
      id: '3',
      title: 'रामचरितमानस',
      author: 'तुलसीदास',
      price: 12.99,
      imageUrl: 'assets/images/book3.jpg',
      description: 'महान हिंदी महाकाव्य...',
      category: 'Hindi',
      rating: 4.9,
    ),
  ];

  static List<String> categories = [
    'All',
    'Fiction',
    'Science',
    'Hindi',
    'History',
    'Biography'
  ];
}