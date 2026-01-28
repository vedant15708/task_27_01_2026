import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _items = [
    {'icon': Icons.favorite, 'label': 'Favorites', 'color': Colors.pink},
    {'icon': Icons.music_note, 'label': 'Music', 'color': Colors.purple},
    {
      'icon': Icons.import_contacts_outlined,
      'label': 'Places',
      'color': Colors.green,
    },
    {'icon': Icons.article, 'label': 'News', 'color': Colors.orange},
  ];

  final List<Widget> _pages = [
    Center(child: Text('Favorites Page', style: TextStyle(fontSize: 30))),
    Center(child: Text('Music Page', style: TextStyle(fontSize: 30))),
    Center(child: Text('Places Page', style: TextStyle(fontSize: 30))),
    Center(child: Text('News Page', style: TextStyle(fontSize: 30))),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          'colorful BottomNavigationBar',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60,
        child: Row(
          children: List.generate(_items.length, (index) {
            final item = _items[index];
            final Color color = item['color'];

            return Expanded(
              child: InkWell(
                onTap: () => _onTap(index),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item['icon'], color: color),
                    SizedBox(height: 4),
                    Text(item['label'], style: TextStyle(color: color)),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
