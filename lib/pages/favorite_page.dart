import 'package:flutter/material.dart';
import 'package:delivary/models.dart';
import 'package:delivary/constants.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  late int currentIndex;
  late List<FoodItem> favoritesFood;

  @override
  void initState() {
    super.initState();
    favoritesFood = foodItems.where((item) => item.getFavorite()).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: favoritesFood.isEmpty ? const Center(
        child: Text(
          'Empty...',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black26, fontSize: 20),)) : ListView.builder(
            itemCount: favoritesFood.length,
            itemBuilder: ((context, index) => Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Image.asset(favoritesFood[index].pathImage, fit: BoxFit.fill, width: 80, height: 60,),
                  title: Text(favoritesFood[index].name, style: const TextStyle(fontWeight: FontWeight.w700,),),
                  subtitle: Text(favoritesFood[index].category),
                  trailing: IconButton(icon: Icon(favoritesFood[index].getFavorite() ? Icons.favorite : Icons.favorite_outline, color: Colors.deepOrangeAccent,),
                  onPressed: (){
                    setState(() {
                      FoodItem getItem = foodItems.firstWhere((foodItem) => favoritesFood[index].id == foodItem.id);
                      int naturalIndex = foodItems.indexOf(getItem);
                      foodItems[naturalIndex].setFavorite = !foodItems[naturalIndex].getFavorite();
                      favoritesFood = favoritesFood.where((item) => item.getFavorite()).toList();
                    });
                  },
                  )
                ),
              ),
            ))
          )
    );
  }
}
