import 'package:flutter/material.dart';

/// Flutter code sample for [Scaffold].

void main() => runApp(const ScaffoldExampleApp());

class ScaffoldExampleApp extends StatelessWidget {
  const ScaffoldExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  int _count = 0;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),
      backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => ++_count),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
          child: ListView(
        //removing padding from the listview
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('List Tile 1'),
            selected: _selectedIndex == 0,
            onTap: () {
              // Update the state of the app.
              _onItemTapped(0);
              //close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('List Tile 2'),
            selected: _selectedIndex == 1,
            onTap: () {
              // Update the state of the app.
              _onItemTapped(1);
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }
}
