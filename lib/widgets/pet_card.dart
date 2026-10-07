import 'package:flutter/material.dart';
import 'detail_row.dart';

class PetCard extends StatelessWidget {
  const PetCard({required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      color: Theme.of(context).colorScheme.inversePrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Placeholder image area
          Container(
            height: 180,
            color: colorScheme.primaryContainer,
            child: Center(
              child: Icon(
                Icons.catching_pokemon,
                size: 80,
                color: colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Dawg',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Chip(
                      label: const Text('Healthy'),
                      elevation: 0,
                      backgroundColor: colorScheme.secondaryContainer,
                      labelStyle: TextStyle(color: colorScheme.onSecondaryContainer),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                DetailRow(icon: Icons.category, label: 'Breed', value: 'Golden Retriever'),
                DetailRow(icon: Icons.cake, label: 'Age', value: '3 years'),
                DetailRow(icon: Icons.monitor_weight, label: 'Weight', value: '28 kg'),
                DetailRow(icon: Icons.pets, label: 'Species', value: 'Dog'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}