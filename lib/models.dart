class FoodItems {
  final String name;
  final String pathImage;
  final String estimatedTime;
  final int frequencyOfSelling;
  final double price;
  final String category;
  bool isFavorite;
  final int id;

  FoodItems({required this.id, required this.name, required this.pathImage,
            required this.estimatedTime, required this.frequencyOfSelling,
            required this.price, required this.category, this.isFavorite = false});

  set setFavorite(bool isFavorite){
    this.isFavorite = isFavorite;
  }
  bool getFavorite(){
    return isFavorite;
  }
}

class Menues {
  final String title;
  final String pathImage;

  const Menues({required this.title, required this.pathImage});
}