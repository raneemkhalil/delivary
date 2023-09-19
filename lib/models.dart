class FoodItem {
  final String name;
  final String pathImage;
  final String estimatedTime;
  final int frequencyOfSelling;
  final double price;
  final String category;
  bool isFavorite;
  final int id;
  final String size;
  final String calories;
  final String cooking;
  final String description; 

  FoodItem({
    required this.id, required this.name, required this.pathImage,
    required this.estimatedTime, required this.frequencyOfSelling,
    required this.price, required this.category, this.isFavorite = false,
    required this.size, required this.calories, required this.cooking,
    required this.description,
  });

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

class Coupons {
  final String id;
  final String name;
  final int value;

  Coupons({
    required this.id,
    required this.name,
    required this.value,
  });
}

class Order {
  final FoodItem item;
  final int quantity;
  
  Order({
    required this.item,
    required this.quantity
  });
}