class Book {
  final String id;
  final String title;
  final String author;
  final double price;
  final String imageUrl;
  final String description;
  final double rating;
  final String category;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.category,
    this.rating = 0.0,
  });
}