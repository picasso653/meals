import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  // Constructor for the MainDrawer class which takes a function 'onSelectScreen'
  const MainDrawer({super.key, required this.onSelectScreen});

  // Function that will be called when a menu item is selected
  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer( // Create a Drawer widget
      child: Column(
        children: [
          // Drawer header with a gradient background
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Row(children: [
              // Icon for the app
              Icon(
                Icons.fastfood,
                size: 48,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 18,
              ),
              // Title of the app
              Text(
                'Cooking Up!',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              )
            ]),
          ),
          // Menu item for 'Meals'
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Meals',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              // When 'Meals' is tapped, call the 'onSelectScreen' function with 'meals' identifier
              onSelectScreen('meals');
            },
          ),
          // Menu item for 'Filters'
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Filters',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              // When 'Filters' is tapped, call the 'onSelectScreen' function with 'filters' identifier
              onSelectScreen('filters');
            },
          )
        ],
      ),
    );
  }
}
