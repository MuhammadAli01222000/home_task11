class ModelProduct {
  final int stars;
  final int countComment;
  final double price;
  final String imgUrl;
  final String productName;
  final String productType;
  final String description;
  final int color;

  ModelProduct({
    required this.stars,
    required this.countComment,
    required this.price,
    required this.imgUrl,
    required this.productName,
    required this.productType,
    required this.description,
    required this.color,
  });

  factory ModelProduct.fromJson(Map<String, dynamic> json) {
    return ModelProduct(
      stars: json['star'] ?? 0,
      countComment: json['comment'] ?? 0,
      price: (json['price'] as num).toDouble(),
      imgUrl: json['imgUrl'] ?? '',
      productName: json['productName'] ?? '',
      productType: json['productType'] ?? '',
      description: json['description'] ?? '',
      color: json['color'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productName': productName,
      'productType': productType,
      'imgUrl': imgUrl,
      'description': description,
      'price': price,
      'color': color,
      'star': stars,
      'comment': countComment,
    };
  }
}
