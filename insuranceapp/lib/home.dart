import 'package:flutter/material.dart';
import 'package:insuranceapp/custom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomNavBar(),
          Text(
            'krian',
          ),
        ],
      ),
    );
  }
}
