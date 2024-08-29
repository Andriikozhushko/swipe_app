class AdProduct {
  final String price;
  final int rooms;
  final String title;
  final double quadratmetr;
  final String etage;
  final String description1;
  final String description2;
  final String category;
  final String imageAssetPath;
  final String avaibleTime;
  final int id;
  bool isFavorite;

  AdProduct ({
    required this.price,
    required this.quadratmetr,
    required this.rooms,
    required this.etage,
    required this.title,
    required this.description1,
    required this.description2,
    required this.category,
    required this.avaibleTime,
    required this.imageAssetPath,
    required this.id,
    required this.isFavorite,
  });
}
