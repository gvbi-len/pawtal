import 'package:flutter/material.dart';
import 'detail_row.dart';

class PetCard extends StatelessWidget {
  PetCard({required this.colorScheme});

  final ColorScheme colorScheme;
  String petName = "Unnamed";
  String petBreed = "Unknown";
  String petSpecies = "Unknown";
  String petHealth = "Healthy";
  int petAge = 0;
  int petWeight = 0;

  void setPetDetails(String newPetName, String newPetBreed, String newPetSpecies, int newPetAge, int newPetWeight){
    this.petName = newPetName;
    this.petBreed = newPetBreed;
    this.petSpecies = newPetSpecies;
    this.petAge = newPetAge;
    this.petWeight = newPetWeight;
  }

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
                Icons.photo,
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
                        petName,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Chip(
                      label: Text(petHealth),
                      elevation: 0,
                      backgroundColor: colorScheme.secondaryContainer,
                      labelStyle: TextStyle(color: colorScheme.onSecondaryContainer),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                DetailRow(icon: Icons.category, label: 'Breed', value: petBreed),
                DetailRow(icon: Icons.cake, label: 'Age', value: '$petAge years'),
                DetailRow(icon: Icons.monitor_weight, label: 'Weight', value: '$petWeight kg'),
                DetailRow(icon: Icons.pets, label: 'Species', value: petSpecies),
              ],
            ),
          ),
        ],
      ),
    );
  }
}