import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavExample(),
    );
  }
}

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Center(
                child: Text(
                  "Example 1",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),

              SizedBox(height: 24),

              Text(
                "• A bottom navigation bar is usually used in conjunction with a Scaffold.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),

              Text(
                "• Bottom navigation bar consists of multiple items in the form of text labels, icons, or both.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),

              Text(
                "• This example consists of icons and label both.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),

              Text(
                "• Bottom Navigation type is Fixed (Default Type).",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),

              Text(
                "• Use when there are less than five items.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        selectedFontSize: 12,
        unselectedFontSize: 12,

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Reels"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Gallery",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/profile_image.jpg"),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

//BoxFit.fill: Stretches the image to fill the entire container
//BoxFit.cover: Scales the image uniformly to cover the entire container while maintaining its aspect ratio.It crops any overflowing content
//BoxFit.contain: Scales the image uniformly so that it fits entirely within the container while maintaining its aspect ratio
//BoxFit.fitWidth: Scales the image so that its width matches the container's width, while maintaining the aspect ratio
//
