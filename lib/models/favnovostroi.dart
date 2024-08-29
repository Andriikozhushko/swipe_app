class FavNovostroi {
  final String price;
  final String title;
  final int quadratmetr;
  final String description1;
  final String description2;
  final String category;
  final String imageAssetPath;
  final int id;
  bool isFavorite;

  FavNovostroi({
    required this.price,
    required this.quadratmetr,
    required this.title,
    required this.description1,
    required this.description2,
    required this.category,
    required this.imageAssetPath,
    required this.id,
    this.isFavorite = false,
  });
}
