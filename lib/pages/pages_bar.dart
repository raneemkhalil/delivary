import 'package:delivary/pages/home_page.dart';
import 'package:delivary/pages/favorite_page.dart';
import 'package:delivary/pages/profile_page.dart';
import 'package:flutter/material.dart';
// import 'package:delivary/models.dart';


class PagesBar extends StatefulWidget {
  const PagesBar({super.key});

  @override
  State<PagesBar> createState() => _PagesBarState();
}

class _PagesBarState extends State<PagesBar> {
  int selectedIndex = 0;
  List pages = const [
    HomePage(),
    FavoritePage(),
    ProfilePage()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label:'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'Favorite', icon: Icon(Icons.favorite)),
        BottomNavigationBarItem(label: 'Person', icon: Icon(Icons.person)),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.deepOrangeAccent,
      onTap: (currentIndex) {
        setState(() {
          selectedIndex = currentIndex;
        });
      },),
      body: pages[selectedIndex],
    );
  }
}
