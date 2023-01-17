import 'package:bottomnavigation/bottom_bar.dart';
import 'package:flutter/material.dart';

class ForwordScreen extends StatefulWidget {
  const ForwordScreen({Key? key}) : super(key: key);

  @override
  State<ForwordScreen> createState() => _ForwordScreenState();
}

class _ForwordScreenState extends State<ForwordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forword Screen"),
      ),
      body: const Center(
        child: Text(
          'Forword Screen',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal.withOpacity(.8),
        child: IconButton(onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NavigationBottomBar()));

        },
            icon: const Icon(Icons.arrow_back)),
      ),
    );
  }
}
