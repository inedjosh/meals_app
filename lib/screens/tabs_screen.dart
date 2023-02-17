import 'package:flutter/material.dart';

import '../screens/favourite_screen.dart';
import '../screens/categories_screen.dart';
import '../widgets/main_drawer.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': const CategoriesScreen(), 'title': 'Categories'},
    {'page': const FavouriteScreen(), 'title': 'Your Favourites'},
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_pages[_selectedPageIndex]['title'])),
        drawer: Drawer(child: MainDrawer()),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).colorScheme.secondary,
            currentIndex: _selectedPageIndex,
            onTap: _selectPage,
            backgroundColor: Theme.of(context).primaryColor,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'Categories'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline_outlined),
                  label: 'Favorites')
            ]));
  }
}
