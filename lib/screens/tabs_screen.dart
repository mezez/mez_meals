import 'package:flutter/material.dart';

import './favourites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavouritesScreen(), 'title': 'Your Favourite'},
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    //flutter automatically gives you the index
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text('Categories')),
          BottomNavigationBarItem(
              // backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text('Favourites')),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.shifting,
        // type: BottomNavigationBarType.fixed,
      ),
    );
    // return Scaffold();
  }
}
