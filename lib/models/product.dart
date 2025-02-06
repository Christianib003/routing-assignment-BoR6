class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String color;
  final bool isStarred;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    this.isStarred = false,
  });
}
