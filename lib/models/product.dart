class Product{
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double rating;
  final int stock;
  final String thumbnail;


  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.rating,
    required this.stock,
    required this.thumbnail
  });

  factory Product.fromJson(Map<String, dynamic> j) {
    return Product(
      id: j['id'],
      title: j['title'],
      description: j['description'],
      category: j['category'],
      price: j['price'],
      rating: j['rating'],
      stock: j['stock'],
      thumbnail: j['thumbnail'],
    );
  }





















}