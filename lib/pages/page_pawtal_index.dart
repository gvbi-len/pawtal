import 'package:flutter/material.dart';
import 'package:pawtal/widgets/pawdex_grid.dart';

class PagePawtalIndex extends StatelessWidget{
  const PagePawtalIndex({super.key});
  
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.chevron_left)
        ),
        backgroundColor: colorScheme.inversePrimary,
        title: Text('Pawtal Index'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 120),
        child: PawdexGrid(colorScheme: colorScheme),
      ),
    );
  }
}