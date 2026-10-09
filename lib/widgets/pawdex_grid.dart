import 'package:flutter/material.dart';

class PawdexGrid extends StatelessWidget{
  const PawdexGrid({required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.5,
      children: [
        Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
          color: colorScheme.surface,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
          color: colorScheme.surface,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
          color: colorScheme.surface,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
          color: colorScheme.surface,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: (){},
          ),
        ),
      ],
    );
  }
}