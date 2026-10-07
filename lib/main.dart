import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:pawtal/widgets/action_grid.dart';
import 'package:pawtal/widgets/pet_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pawtal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
      floatingActionButton: SpeedDial(
        elevation: 0,
        buttonSize: Size(84, 84),
        overlayColor: colorScheme.primaryContainer,
        overlayOpacity: 0.0,
        shape: CircleBorder(),
        backgroundColor: colorScheme.inversePrimary,
        tooltip: 'Menu',
        icon: Icons.pets,
        activeIcon: Icons.close,
        childrenButtonSize: Size(72, 72),
        direction: SpeedDialDirection.left,
        children: [
          SpeedDialChild(
            label: 'Settings',
            labelBackgroundColor: colorScheme.surface,
            elevation: 0,
            shape: CircleBorder(),
            backgroundColor: colorScheme.inversePrimary,
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings)
            )
          ),
          SpeedDialChild(
            label: 'Pawdex',
            labelBackgroundColor: colorScheme.surface,
            elevation: 0,
            shape: CircleBorder(),
            backgroundColor: colorScheme.inversePrimary,
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.book),
            )
          ),
          SpeedDialChild(
            label: 'Account',
            labelBackgroundColor: colorScheme.surface,
            elevation: 0,
            shape: CircleBorder(),
            backgroundColor: colorScheme.inversePrimary,
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.person),
            )
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        color: colorScheme.inversePrimary,
      ),
    );
  }
}