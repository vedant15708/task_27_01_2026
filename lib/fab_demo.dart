import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAB Buttons',
      debugShowCheckedModeBanner: false,
      home: FabDemo(),
    );
  }
}

class FabDemo extends StatefulWidget {
  const FabDemo({super.key});

  @override
  State<FabDemo> createState() => _FabDemoState();
}

class _FabDemoState extends State<FabDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FloatingAction Buttons Demo",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            const SizedBox(height: 24),
            const Text(
              "Default FAB Button",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Center(
              child: FloatingActionButton(
                shape: CircleBorder(),
                backgroundColor: Colors.greenAccent,
                onPressed: () {},
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),

            SizedBox(height: 24),
            const Text(
              "Label FAB Button",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Center(
              child: FloatingActionButton.extended(
                onPressed: () {},
                shape: CircleBorder(),
                label: const Text("Add", style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.deepPurpleAccent.shade200,
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              "Circle Border FAB",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.blue,
                shape: const CircleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                ),
                child: const Icon(Icons.warning, color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Rounded Rectangle Border FAB",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.shopping_cart, color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Icon with Label FAB",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Colors.white),
                  label: const Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                SizedBox(width: 15),
                FloatingActionButton.extended(
                  onPressed: () {},
                  icon: const Icon(Icons.add_a_photo, color: Colors.white),
                  label: const Text(
                    "Take Pic",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
