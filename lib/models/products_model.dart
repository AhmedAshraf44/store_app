class ProductsModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModel? rating;
   final String category;
  ProductsModel({
    required this.category,
    required this.id,
    required this.rating,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ProductsModel.fromJson(jsonData) {
    return ProductsModel(
      category: jsonData['category'],
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: jsonData['rating'] == null ?  null: RatingModel.fromJson(jsonData['rating']),
    );
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
