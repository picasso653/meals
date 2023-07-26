import 'package:flutter/material.dart';

// Defining a stateless widget 'MealItemTrait' to represent an item with an icon and a label.
class MealItemTrait extends StatelessWidget {
  // Constructor for the 'MealItemTrait' class, using named parameters (super.key, icon, label).
  // The '@required' annotation indicates that 'icon' and 'label' must be provided when creating an instance of this class.
  const MealItemTrait({required this.icon, required this.label, Key? key}) : super(key: key);

  // The 'icon' and 'label' properties are declared as final, meaning they cannot be changed after the widget is created.
  final IconData icon;
  final String label;

  // The 'build' method required by 'StatelessWidget' to describe the user interface.
  // It returns a 'Row' widget containing an 'Icon' widget and a 'Text' widget.
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Displaying an 'Icon' widget with the provided 'icon' data.
        Icon(
          icon,
          size: 17,
          color: Colors.white,
        ),
        // Adding a horizontal spacing of 6 pixels using 'SizedBox'.
        const SizedBox(
          width: 6,
        ),
        
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
