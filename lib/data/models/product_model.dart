class Product {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String modelUrl;
  final double price;
  int amount;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.modelUrl,
    required this.price,
    this.amount = 0,
  });

  Product.fromObject(Product product)
      : id = product.id,
        name = product.name,
        description = product.description,
        imageUrl = product.imageUrl,
        modelUrl = product.modelUrl,
        price = product.price,
        amount = product.amount;
}
