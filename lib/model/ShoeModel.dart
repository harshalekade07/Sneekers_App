class Shoe {
  final String name;
  final String imagePath;
  final String price;

  Shoe({
    required this.name,
    required this.imagePath,
    required this.price,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Shoe &&
        other.name == name &&
        other.imagePath == imagePath &&
        other.price == price;
  }

  @override
  int get hashCode => name.hashCode ^ imagePath.hashCode ^ price.hashCode;
}
