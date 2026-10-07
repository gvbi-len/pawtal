import 'package:flutter/material.dart';
import 'action_item.dart';
import 'action_button.dart';

class ActionGrid extends StatelessWidget {
  const ActionGrid({required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    final actions = [
      ActionItem(icon: Icons.list_alt, label: 'Pet List'),
      ActionItem(icon: Icons.medical_services, label: 'Medical Records'),
      ActionItem(icon: Icons.directions_walk, label: 'Walk Records'),
      ActionItem(icon: Icons.food_bank, label: 'Food Log')
    ];

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 3.0,
      children: actions
          .map((action) => ActionButton(item: action, colorScheme: colorScheme))
          .toList(),
    );
  }
}