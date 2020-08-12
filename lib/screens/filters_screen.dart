import 'package:flutter/material.dart';
import 'package:new_mez_meals/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          //Expanded child widget takes up as muuch space as it can get
          Expanded(
              child: ListView(
            children: <Widget>[
              SwitchListTile(
                  title: Text('Gluten-free'),
                  value: _glutenFree,
                  subtitle: Text('Only include gluten free meals'),
                  onChanged: (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  })
            ],
          ))
        ],
      ),
    );
  }
}
