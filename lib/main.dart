import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:pawtal/pages/page_pawtal_index.dart';
import 'package:pawtal/widgets/action_grid.dart';
import 'package:pawtal/widgets/pet_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color accentColor = Colors.purple;
    return MaterialApp(
      title: 'Pawtal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: accentColor),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: accentColor, brightness: Brightness.dark)
      ),
      home: const MyHomePage(title: 'Pawtal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.inversePrimary,
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.person)
        ),
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 120), // bottom padding for FAB
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PetCard(colorScheme: colorScheme),
            const SizedBox(height: 48),
            ActionGrid(colorScheme: colorScheme),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        elevation: 3.0,
        shape: CircleBorder(),
        backgroundColor: colorScheme.surface,
        tooltip: 'Menu',
        onPressed: (){

        },
        child: Icon(
          color: colorScheme.primary,
          Icons.pets
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        color: colorScheme.inversePrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: EdgeInsets.all(16),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PagePawtalIndex()),
                  );
                },
                icon: Icon(Icons.collections_bookmark_sharp)
            ),
            IconButton(
              padding: EdgeInsets.all(16),
              onPressed: (){},
              icon: Icon(Icons.settings)
            ),
          ],
        ),
      ),
    );
  }
}