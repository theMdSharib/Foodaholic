import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _builtSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

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
            padding: EdgeInsets.all(10),
            child: Text(
              'Add Filters!',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _builtSwitchListTile(
                'Gluten-Free',
                'only include Gluten-Free meals',
                _glutenFree,
                (newValue) {
                  setState(
                    () {
                      _glutenFree = newValue;
                    },
                  );
                },
              ),
              _builtSwitchListTile(
                'Lactose Free',
                'only include lactose-free meals',
                _lactoseFree,
                    (newValue) {
                  setState(
                        () {
                      _lactoseFree = newValue;
                    },
                  );
                },
              ),
              _builtSwitchListTile(
                'Vegetarian',
                'only include vegetarian meals',
                _vegetarian,
                    (newValue) {
                  setState(
                        () {
                      _vegetarian = newValue;
                    },
                  );
                },
              ),
              _builtSwitchListTile(
                'Vegan',
                'only include vegan meals',
                _vegan,
                    (newValue) {
                  setState(
                        () {
                      _vegan = newValue;
                    },
                  );
                },
              ),
            ],
          ))
        ],
      ),
    );
  }
}
